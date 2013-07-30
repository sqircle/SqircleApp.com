# Require slim
require 'slim'
set :slim, :pretty => true

# Enable pretty URLS
activate :directory_indexes

###
# Pages
###
set :css_dir,   'stylesheets'
set :js_dir,    'javascripts'
set :images_dir, 'images'

###
# Build-specific configuration
###
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css
  
  # Minify Javascript on build
  activate :minify_javascript
  
  # Enable cache buster
  activate :cache_buster
  
  # Use relative URLs
  activate :relative_assets
end
