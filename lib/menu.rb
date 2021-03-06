#require 'colorize'

class Menu
  def initialize(printer)
    @printer = printer
    @mm = Mastermind.new
    @time = Time.new
    @game = Game.new(mm, printer, time)
  end

  def main_menu
    puts printer.main_menu_query
    answer = gets.chomp.downcase
    case answer
    when "q", "quit"
      what_a_quitter
    when "i", "instructions"
      puts printer.instructions
      main_menu
    when "p", "play"
      play
    end
  end

  # def display_intro
  #   printer.greeting
  #   main_menu
  # end

  protected

  attr_reader :printer, :mm, :time, :game

  private

  # def main_menu
  #   printer.main_menu_query
  #   answer = gets.chomp.downcase
  #   case answer
  #   when "q", "quit"
  #     what_a_quitter
  #   when "i", "instructions"
  #     printer.instructions
  #     main_menu
  #   when "p", "play"
  #     play
  #   end
  # end

  def what_a_quitter
    puts printer.admonishment
  end

  def play
    start_game
    if mm.won == true
      ask_play_again
    end
  end

  def start_game
    puts printer.first_guess_prompt
    time.start_time
    game.play
  end

  def ask_play_again
    mm.guesses = 0
    puts printer.ask_play_again
    input = gets.chomp.downcase
    if input == "p" || input == "play"
      mm.won = false
      puts printer.go_again
      mm.create_code
      play
    elsif input == "q" || input == "quit"
      printer.goodbye
    end
  end
end
