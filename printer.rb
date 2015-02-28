require 'colorize'
#make into module because doesn't have its own state/attributes, it's just behavior
class Printer

  def greeting
    print "\e[2J\e[f"
    puts ".##.....##....###.....######..########.########.########..##.....##.####.##....##.########.".red
    puts ".###...###...##.##...##....##....##....##.......##.....##.###...###..##..###...##.##.....##".red
    puts ".####.####..##...##..##..........##....##.......##.....##.####.####..##..####..##.##.....##".yellow
    puts ".##.###.##.##.....##..######.....##....######...########..##.###.##..##..##.##.##.##.....##".yellow
    puts ".##.....##.#########.......##....##....##.......##...##...##.....##..##..##..####.##.....##".green
    puts ".##.....##.##.....##.##....##....##....##.......##....##..##.....##..##..##...###.##.....##".green
    puts ".##.....##.##.....##..######.....##....########.##.....##.##.....##.####.##....##.########.".blue
    puts "Would you like to (p)lay, read the (i)nstructions, or (q)uit?".bold
  end

  def admonishment
    puts "Nobody likes a quitter.".cyan.bold
  end

  def instructions
    puts "At the beginning of the game, a series of four colors (Red, Green, Blue, Yellow) is generated.\nYour goal is to guess the four colors and the order that they are in.  Enter your guess in the following format: RRBY.\nTry to guess the correct colors and order in the shortest time possible with the least number of guesses".bold
  end

  def first_guess_prompt
    puts "I have generated a beginner sequence with four elements made up of: (r)ed,\n(g)reen, (b)lue, and (y)ellow.  Use (q)uit at any time to end the game.".bold
  end

  def recurring_guess_prompt
    puts "Enter your guess".red.bold.blink
  end

  def mid_game_goodbye
    puts "Goodbye! Sorry to see you leave so soon!"
  end

  def input_length_too_short
    puts "Your entry is too short, please enter 4 characters.".red.bold
  end

  def input_length_too_long
    puts "Your entry is too long, please enter 4 characters.".red.bold
  end

  def congratulations(code, guesses, minutes, seconds)
    puts "Congratulations!!!"
    puts "You guessed the sequence #{code} in #{guesses} guesses over #{minutes} minutes and #{seconds} seconds".red.bold
  end

  def ask_play_again
    puts "Would you like to (p)lay again or (q)uit?".red.bold
  end

  def go_again
    puts "Here we go again!".red.bold
  end

  def goodbye
    puts "Goodbye!".cyan.bold
  end
end
