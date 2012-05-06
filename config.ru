require 'rubygems'
require 'rack'
require 'rack/contrib/try_static'

def quattrocentoquattro(env)
  puts "[404] - #{env["REQUEST_URI"]}"
  File.open('_site/404.html', File::RDONLY)
end

use Rack::TryStatic, 
    :root => "_site",  # static files root dir
    :urls => %w[/],     # match all requests 
    :try => ['.html', 'index.html', '/index.html'] # try these postfixes sequentially
# otherwise 404 NotFound
run lambda { |env|
  [
    404,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    quattrocentoquattro(env)
  ]
}
