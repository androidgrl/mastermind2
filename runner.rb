require_relative 'mastermind'
require_relative 'printer'
require_relative 'time'
require 'benchmark'

printer = Printer.new
loop do
  printer.greeting
  answer = gets.chomp.downcase
  case
  when answer == "q" || answer == "quit"
    printer.admonishment
    break
  when answer == "i" || answer == "instructions"
    printer.instructions
  when answer == "p" || answer == "play"
    printer.first_guess_prompt
    mm = Mastermind.new
    time = Time.new
    time.start_time
    # make a menu class
      until mm.won
        printer.recurring_guess_prompt
        input = gets.chomp.downcase
        mm.guesses += 1
        case
        when input == "c" || input == "cheat"
          puts "#{mm.code.join}"
        when input == "q" || input == "quit"
          printer.mid_game_goodbye
          break
        when input.length < 4
          printer.input_length_too_short
        when input.length > 4
          printer.input_length_too_long
        when mm.win?(input)
          mm.won = true
          time.end_time
          printer.congratulations(mm.code.join, mm.guesses, time.elapsed_time.to_i/60, (time.elapsed_time % 60).round)
        else
          puts "#{input} has #{mm.check_colors(input)} of the correct elements in #{mm.check_positions(input)} of the correct positions"
        end
      end
    printer.ask_play_again
    input = gets.chomp.downcase
    if input == "p" || input == "play"
      printer.go_again
    elsif input == "q" || input == "quit"
      printer.goodbye
      break
    end
  end
end

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
