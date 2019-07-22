require 'pry'
require 'httparty'
require 'dotenv/load'

#require "sweet_tooth/version"

require_relative "sweet_tooth/version"
require_relative "sweet_tooth/cli"
require_relative "sweet_tooth/api"
require_relative "sweet_tooth/shop"

module SweetTooth
  class Error < StandardError; end
  # Your code goes here...
end
