require 'digest'
require 'nokogiri'

module VariousHelper
  KICKSTARTER_URL = 'https://www.kickstarter.com/projects/howmydoin/howmydoin-the-future-of-feedback'

  def gravatar_for email, options = {}
    options = {:alt => 'avatar', :class => 'avatar', :size => 80}.merge! options
    id = Digest::MD5::hexdigest email.strip.downcase
    url = 'http://www.gravatar.com/avatar/' + id + '.jpg?s=' + options[:size].to_s
    options.delete :size
    image_tag url, options
  end

  def kickstarter_details project_url = KICKSTARTER_URL
    metadata = {}
    metadata[:url] = project_url

    if build? or ENV['LIVE']
      # Based on https://github.com/webmonarch/kickstarter_curl
      doc = Nokogiri::HTML open project_url
      metadata[:backers] = element(doc, 'backers-count').to_i
      metadata[:goal] = element(doc, 'goal').to_i
      metadata[:pledged] = element(doc, 'pledged').to_i
      metadata[:pledged_percent] = (element(doc, 'percent-raised').to_f * 100).ceil
    else
      metadata[:backers] = 12
      metadata[:goal] = 16000
      metadata[:pledged] = 1337
      metadata[:pledged_percent] = 23
    end
    metadata[:pledged_percent_capped] = kickstarter_bar_width metadata[:pledged_percent]
    metadata
  end

  private
  def element doc, element
    element = "data-#{element}"
    node = doc.css("*[#{element}]")
    node.attr(element).value
  end

  def kickstarter_bar_width pledged_percent
    if pledged_percent < 2
      2
    elsif pledged_percent > 100
      100
    else
      pledged_percent
    end
  end
end
