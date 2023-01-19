require 'httparty'
require 'json'
require 'ostruct'

Dir.glob('./app/**/*.rb').sort.each do |file|
  require file
end

# to use pry console, from root, run "pry -I . -r boot.rb"
# , then you can use console and see byebug bindings
