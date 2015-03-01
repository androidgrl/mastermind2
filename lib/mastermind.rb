class Mastermind

  attr_accessor :code, :guesses, :won
  attr_reader :colors

  COLORS = %w(r g b y)

  def initialize
    create_code
    @guesses = 0
    @won = false
  end

  def create_code
    @code = []
    4.times do
      @code << COLORS.sample
    end
    @code
  end

  def check_positions(input)
    guess_array = input.chars
    pairs = guess_array.zip(@code)
    pairs.count do |c1, c2|
      c1 == c2
    end
  end

  def check_colors(input)
    guess_array = input.chars
    unique_colors = guess_array.uniq
    unique_colors.count do |c|
      @code.include?(c)
    end
  end

  def win?(input)
    check_positions(input) == 4
  end

  def valid_color?(input)
      guess_array = input.chars
    string.all? do |c|
      colors.include?(c)
    end
  end

  def test_check_colors(input)
    guess_array = input.chars
    unique_colors = guess_array.uniq
    unique_colors.count do |c|
      ["r", "g", "b", "y"].include?(c)
    end
  end

  def test_check_positions(input)
    guess_array = input.chars
    pairs = guess_array.zip(["r", "g", "b", "y"])
    pairs.count do |c1, c2|
      c1 == c2
    end
  end

  def test_win?(input)
    test_check_positions(input) == 4
  end

end
