#after winning, it says congratulations and then asks to quit or play again (using printer.ask_play_again.. not printer.main_menu_query), quit works fine, but, play again
# Here we go again!
# I have generated a beginner sequence with four elements made up of: (r)ed,
# (g)reen, (b)lue, and (y)ellow.  Use (q)uit at any time to end the game.
# Would you like to (p)lay again or (q)uit?

# fixed but now it still has the same code sequence as before

class Game
  def initialize(mm, printer, time)
    @mm = mm
    @printer = printer
    @time = time
  end

  def play
    catch(:quit) do
      until mm.won
        printer.recurring_guess_prompt
        input = gets.chomp.downcase
        mm.guesses += 1
        handle_input(input)
      end
    end
  end

  def handle_input(input)
    case
    when input == "c" || input == "cheat"
      cheat
    when input == "q" || input == "quit"
      quit
    when valid_color?(input) != true
      print_color_error
    when invalid_length?(input)
      print_length_error(input)
    when mm.win?(input)
      victory!
    else
      print_guess_stats(input)
    end
  end

  protected

  attr_reader :mm, :printer, :time

  private

  def cheat
    puts "#{mm.code.join}"
  end

  def quit
    printer.mid_game_goodbye
    throw :quit
  end

  def invalid_length?(input)
    input.length != 4
  end

  def print_length_error(input)
    if input.length < 4
      printer.input_length_too_short
    else
      printer.input_length_too_long
    end
  end

  def valid_color?(input)
    input.chars.all? do |e|
      ["r", "g", "b", "y"].include?(e)
    end
  end

  def print_color_error
    printer.input_invalid_color
  end

  def victory!
    mm.won = true
    time.end_time
    printer.congratulations(mm.code.join, mm.guesses, time.elapsed_time.to_i/60, (time.elapsed_time % 60).round)
  end

  def print_guess_stats(input)
    puts "#{input} has #{mm.check_colors(input)} of the correct elements in #{mm.check_positions(input)} of the correct positions"
  end
end
