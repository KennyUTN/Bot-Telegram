#!/usr/bin/env ruby
require_relative '../lib/bot.rb'

class Main
  def initialize
    @bot = PhiloBot.new
  end
end

puts 'Bot Running, press CTRL-C / CMD-C to shut down'
Main.new
