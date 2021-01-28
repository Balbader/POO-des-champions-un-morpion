require 'bundler'
Bundler.require

$:.unshife File.expand_path("./../lib", __FILE__)

require 'app/application'

Application.new.perform
