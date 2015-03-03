require 'colorize'

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
  end

  def main_menu_query
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?".red.bold
  end

  def admonishment
    "Nobody likes a quitter.".cyan.bold
  end

  def instructions
    "At the beginning of the game, a series of four colors (Red, Green, Blue, Yellow) is generated.\nYour goal is to guess the four colors and the order that they are in.  Enter your guess in the following format: RRBY.\nTry to guess the correct colors and order in the shortest time possible with the least number of guesses".bold
  end

  def first_guess_prompt
    "I have generated a beginner sequence with four elements made up of: (r)ed,\n(g)reen, (b)lue, and (y)ellow.  Use (q)uit at any time to end the game.".bold
  end

  def recurring_guess_prompt
    "Enter your guess".red.bold.blink
  end

  def mid_game_goodbye
    "Goodbye! Sorry to see you leave so soon!".blue.bold
  end

  def input_length_too_short
    "Your entry is too short, please enter 4 characters.".blue.bold
  end

  def input_length_too_long
    "Your entry is too long, please enter 4 characters.".blue.bold
  end

  def input_invalid_color
    "Your entry contains a color that is not (r)ed, (b)lue, (g)reen or (y)ellow".green.bold
  end

  def guess_stats(input, colors, positions)
    "#{input} has #{colors} of the correct elements in #{positions} of the correct positions".red.bold
  end

  def congratulations(code, guesses, minutes, seconds)
    print "\e[2J\e[f"
    puts "..######...#######..##....##..######...########.....###....########.##..........###....########.####..#######..##....##..######..####.####.####".red.blink
    puts ".##....##.##.....##.###...##.##....##..##.....##...##.##......##....##.........##.##......##.....##..##.....##.###...##.##....##.####.####.####".red.blink
    puts ".##.......##.....##.####..##.##........##.....##..##...##.....##....##........##...##.....##.....##..##.....##.####..##.##.......####.####.####".yellow.blink
    puts ".##.......##.....##.##.##.##.##...####.########..##.....##....##....##.......##.....##....##.....##..##.....##.##.##.##..######...##...##...##.".yellow.blink
    puts ".##.......##.....##.##..####.##....##..##...##...#########....##....##.......#########....##.....##..##.....##.##..####.......##...............".green.blink
    puts ".##....##.##.....##.##...###.##....##..##....##..##.....##....##....##.......##.....##....##.....##..##.....##.##...###.##....##.####.####.####".green.blink
    puts "..######...#######..##....##..######...##.....##.##.....##....##....########.##.....##....##....####..#######..##....##..######..####.####.####".blue.blink
    puts "You guessed the sequence #{code} in #{guesses} guesses over #{minutes} minutes and #{seconds} seconds".red.bold
  end

  def ask_play_again
    "Would you like to (p)lay again or (q)uit?".green.bold
  end

  def go_again
    "Here we go again!".green.bold
  end

  def goodbye
    print "\e[2J\e[f"
    puts"#####".cyan.bold
    puts"#     #  ####   ####  #####  #####  #   # ######".cyan.bold
    puts"#       #    # #    # #    # #    #  # #  #".cyan.bold
    puts"#  #### #    # #    # #    # #####    #   #####".cyan.bold
    puts"#     # #    # #    # #    # #    #   #   #".cyan.bold
    puts"#     # #    # #    # #    # #    #   #   #".cyan.bold
    puts" #####   ####   ####  #####  #####    #   ######".cyan.bold
    puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
    puts "MMMMMMMMMMMMMMMMMMMMMMMMMM:      MMMMMMMMMMMMMMMMMMMMMMMMMMM"
    puts "MMMMMMMMMMMMMMMMMMM~OMMM?         +MMMM:MMMMMMMMMMMMMMMMMMMM"
    puts "MMMMMMMMMMMMMMMMD          :+7+~         .$MMMMMMMMMMMMMMMMM"
    puts "MMMMMMMMMMMMMMM      +M$  .N:M N~..:M7.     MMMMMMMMMMMMMMMM"
    puts "MMMMMMMMMMMMMMM   ZM 7.$.~ M.M88+ 7$$M DM.  IMMMMMMMMMMMMMMM"
    puts "MMMMMMMMMMMMM.  D:Z7I,M.I       ..~8D Z.:.M   MMMMMMMMMMMMMM"
    puts "MMMMMMMMMD.   =I:.~7,                .OM 8$:D   .7MMMMMMMMMM"
    puts "MMMMMMMMM    N M.OM                     ~:=N M    NMMMMMMMMM"
    puts "MMMMMMMM.   M.N D                         O:D,M    MMMMMMMMM"
    puts "MMMMMMM.   8 O D   . .              . .    N:8 M   .MMMMMMMM"
    puts "MMMMMMMM  7~8.M     MMMMMMMMMMMMMMMMMM.     M.M N  MMMMMMMMM"
    puts "MMMMMMMN  OI.D.     M+.....DMMM......M.      ~.$=  MMMMMMMMM"
    puts "MMMMMMM  $.,OO      M+     DMMM     .M.      $...M +MMMMMMMM"
    puts "MMMMMO.  M ON.             DMMM               Z.8M.  MMMMMMM"
    puts "MMMMM    MMNN              DMMM               M.M?.  ~MMMMMM"
    puts "MMMMM    ZM,M              DMMM               MIN~.  ~MMMMMM"
    puts "MMMMM    DM.N              DMMM               M$M+.  ~MMMMMM"
    puts "MMMMM    M:  .             DMMM              .8: M.  MMMMMMM"
    puts "MMMMMMM  D.Z 8             DMMM               I.:M ~MMMMMMMM"
    puts "MMMMMMMO  I+7 .            DMMM              Z.I,  DMMMMMMMM"
    puts "MMMMMMMM  N.D~+            DMMM             +.8 M  MMMMMMMMM"
    puts "MMMMMMM   .M.M?$           DMMM            7 $ N   .MMMMMMMM"
    puts "MMMMMMMD    M:M7:       :88888888Z        Z.$.M.   8MMMMMMMM"
    puts "MMMMMMMMD    M M7.~                     :M.N M.   $MMMMMMMMM"
    puts "MMMMMMMMM?    N,M8 M:                 .MM N.M    :MMMMMMMMMM"
    puts "MMMMMMMMMMMMM.  M,N:.7M...        ..M?.7M.M  .MMMMMMMMMMMMMM"
    puts "MMMMMMMMMMMMMM8  .M?.M8.?.88MM.M.M.$.M.~M . +MMMMMMMMMMMMMMM"
    puts "MMMMMMMMMMMMMMM      M8  $.M=M M.O. $M.     MMMMMMMMMMMMMMMM"
    puts "MMMMMMMMMMMMMMMM..       .7MMMMMZ.         MMMMMMMMMMMMMMMMM"
    puts "MMMMMMMMMMMMMMMMMMM .MMM:         ,DMM= MMMMMMMMMMMMMMMMMMMM"
    puts "MMMMMMMMMMMMMMMMMMMMMMMMMM:      MMMMMMMMMMMMMMMMMMMMMMMMMMM"
    puts "MMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMMM"
  end
end
