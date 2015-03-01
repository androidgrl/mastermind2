require_relative 'game'
require_relative 'mastermind'
require_relative 'menu'
require_relative 'printer'
require_relative 'time'
require 'benchmark'

printer = Printer.new
menu = Menu.new(printer)
menu.display_intro

#if play again don't ask to play again
#after it asks you if you would like to play again, any key besides q will cause it to play again
#ginormous space above mastermind logo, so you have to scroll up to see instructions, or here we go again
#also the play again after you win should be a separate case, not part of the bigger loop
#when you exit in the middle of the game it needs to break out, not ask again

#if they enter a non-valid color
#make the tests

#save scores in a csv file
#ascii art

#difficulty levels
