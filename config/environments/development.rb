# Reverse Proxy for development purposes
config.middleware.use Rack::ReverseProxy do
  # Redirect all PHP URLs
  reverse_proxy %r(\.php), "https://twenty9signals:8890//"

  # Redirect all images and styles
  reverse_proxy '/images/', "https://twenty9signals:8890/"
  reverse_proxy '/styles/', "https://twenty9signals:8890/"
end
