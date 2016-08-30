activate :autoprefixer do |prefix|
  prefix.browsers = "last 5 versions"
end
activate :directory_indexes

set :css_dir, "assets/stylesheets"
set :markdown_engine, :redcarpet
set :markdown,
  autolink: true,
  fenced_code_blocks: true,
  footnotes: true,
  highlight: true,
  smartypants: true,
  strikethrough: true,
  tables: true,
  with_toc_data: true

page "/*.xml", layout: false
page "/*.json", layout: false
page "/*.txt", layout: false

configure :development do
  activate :dotenv, env: ".env.development"
  activate :livereload do |reload|
    reload.no_swf = true
  end
end

configure :build do
  activate :asset_hash
  activate :gzip
  activate :minify_css
  activate :minify_html
end
