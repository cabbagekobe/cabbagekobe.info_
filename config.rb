# --------------------------
# Site settings
# --------------------------
Time.zone = "Tokyo"
set :encoding, 'utf-8'

# --------------------------
# Slim Engine
# --------------------------
Slim::Engine.options[:pretty] = true

# --------------------------
# Path setting
# --------------------------
set :http_prefix, '/'
set :relative_links, false
set :strip_index_file, true
set :trailing_slash, true

# --------------------------
# Directory setting
# --------------------------
set :css_dir,    'src/css'
set :js_dir,     'src/js'
set :images_dir, 'src/img'
set :build_dir,  'docs'

# --------------------------
# layout setting
# --------------------------
page "/*.xml",  :layout => false
page "/*.json", :layout => false
page "/*.txt",  :layout => false

# --------------------------
# Markdown Engine
# --------------------------
set :markdown_engine, :kramdown
set :markdown,
    tables: true,
    autolink: true,
    smartypants: true,
    input: "GFM"

# --------------------------
# Blog settings
# --------------------------
activate :blog do |blog|
  blog.sources = "blog/{year}/{month}/{title}.html"
  blog.permalink = "{year}-{month}-{day}-{title}/index.html"

  blog.layout = "article"

  blog.paginate = true
  blog.per_page = 15
  blog.page_link = "page/{num}"
end

# --------------------------
# Live Reload
# --------------------------
configure :development do
  activate :livereload
end

# --------------------------
# Helpers
# --------------------------
helpers do
end

# --------------------------
# Build configuration
# --------------------------
configure :build do
  # Build ignore path
  ignore "templetes/*"
  ignore "helpers/*"
  ignore "partials/*"

  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript
end
