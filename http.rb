# small HTTPServer, just copy to the folder you wish to serve from.
# Credit to: http://stackoverflow.com/a/3708916
# run with $ ruby http.rb

require 'webrick'
include WEBrick

s = HTTPServer.new(:Port => 8000,  :DocumentRoot => Dir::pwd)
trap("INT"){ s.shutdown }
s.start