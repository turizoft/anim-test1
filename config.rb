# Activate and configure extensions
# https://middlemanapp.com/advanced/configuration/#configuring-extensions

activate :livereload
activate :sprockets

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

# Per-page layout changes
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# Sprockets supports Bower, so we can add Bower components path directly:
sprockets.append_path File.join root, 'vendor', 'bower_components'
sprockets.append_path File.join root, 'vendor', 'css'
sprockets.append_path File.join root, 'vendor', 'js'
