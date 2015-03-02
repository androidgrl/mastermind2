require_relative 'game'
require_relative 'mastermind'
require_relative 'menu'
require_relative 'printer'
require_relative 'time'
require 'benchmark'

class Runner
  def run
    printer = Printer.new
    menu = Menu.new(printer)
    menu.display_intro
  end
end
