class Menu
  def initialize(printer)
    @printer = printer
    @mm = Mastermind.new
    @time = Time.new
    @game = Game.new(mm, printer, time)
  end

  def display_intro
    printer.greeting
    main_menu
  end

  protected

  attr_reader :printer, :mm, :time, :game

  private

  def main_menu
    printer.main_menu_query
    answer = gets.chomp.downcase
    case answer
    when "q", "quit"
      what_a_quitter
    when "i", "instructions"
      printer.instructions
      main_menu
    when "p", "play"
      play
    end
  end

  def what_a_quitter
    printer.admonishment
  end

  def play
    start_game
    ask_play_again
  end

  def start_game
    printer.first_guess_prompt
    time.start_time
    game.play
  end

  def ask_play_again
    printer.ask_play_again
    input = gets.chomp.downcase
    if input == "p" || input == "play"
      mm.won = false
      printer.go_again
      mm.create_code
      play
    elsif input == "q" || input == "quit"
      printer.goodbye
    end
  end
end
