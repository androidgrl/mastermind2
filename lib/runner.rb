require_relative 'game'
require_relative 'mastermind'
require_relative 'menu'
require_relative 'printer'
require_relative 'time'

class Runner
  def run
    printer = Printer.new
    menu = Menu.new(printer)
    # menu.display_intro

    printer.greeting
    menu.main_menu
  end
end
