require 'rubygems'
require 'rack'
require 'rack/contrib/try_static'
require 'rack/rewrite'

use Rack::TryStatic, 
    :root => ".",  # static files root dir
    :urls => %w[/],     # match all requests 
    :try => ['.html', 'index.html', '/index.html'] # tries to recover from missing .html
