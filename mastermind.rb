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

# class Time
#
#   def start_time
#     @start ||= Time.now
#   end
#
#   def end_time
#     @end ||= Time.now
#   end
#
#   def elapsed_time
#     end_time - start_time
#   end
#
# end


# mm.test_check_colors("rrrr")     # => 1
# mm.test_check_positions("rrry")  # => 2
# mm.test_win?("rgby")             # => true
#
# mm = Mastermind.new         # => #<Mastermind:0x007ff463096d98 @colors=["r", "r", "r", "r", "g", "g", "g", "g", "b", "b", "b", "b", "y", "y", "y", "y"], @code=[]>
# mm.create_code              # => ["y", "g", "r", "y"]
# mm.check_colors("rrrr")     # => 1
# mm.check_positions("rrrr")  # => 1
# mm.win?("rrrr")             # => false

# mm = Mastermind.new  # => #<Mastermind:0x007fd74088ffa8 @colors=["r", "r", "r", "r", "g", "g", "g", "g", "b", "b", "b", "b", "y", "y", "y", "y"], @code=[]>
# mm.create_code       # => ["b", "b", "g", "y"]
# mm.code              # => ["b", "b", "g", "y"]
