configure :development do
  activate :livereload
end

helpers do
  def nav_active url
    if current_page.url == url
      'active'
    end
  end
end

set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

configure :build do
  activate :imageoptim

  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
