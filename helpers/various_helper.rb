require 'digest'
require 'nokogiri'

module VariousHelper
  def gravatar_for email, options = {}
    options = {:alt => 'avatar', :class => 'avatar', :size => 80}.merge! options
    id = Digest::MD5::hexdigest email.strip.downcase
    url = 'http://www.gravatar.com/avatar/' + id + '.jpg?s=' + options[:size].to_s
    options.delete :size
    image_tag url, options
  end

  def kickstarter_details project_url = 'https://www.kickstarter.com/projects/howmydoin/howmydoin-the-future-of-feedback'
    metadata = {}
    metadata[:queried_at] = Time.now
    metadata[:url] = project_url

    if development?
      metadata[:backers] = 12
      metadata[:goal] = 16000
      metadata[:pledged] = 1337
      metadata[:pledged_percent] = 0
    else
      # Based on https://github.com/webmonarch/kickstarter_curl
      doc = Nokogiri::HTML open project_url
      metadata[:backers] = doc.css('*[data-backers-count]').attr('data-backers-count').value.to_i
      metadata[:goal] = doc.css('*[data-goal]').attr('data-goal').value.to_i
      metadata[:pledged] = doc.css('*[data-pledged]').attr('data-pledged').value.to_i
      metadata[:pledged_percent] = doc.css('*[data-percent-raised]').attr('data-percent-raised').value.to_f.ceil
    end

    metadata[:pledged_percent_capped] = kickstarter_bar_width metadata[:pledged_percent]
    metadata
  end

  private
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
