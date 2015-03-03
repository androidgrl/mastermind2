require_relative "test_helper"
require_relative "../lib/mastermind"

class MastermindTest < Minitest::Test

  def setup
    @mm = Mastermind.new
  end

  def test_it_exists
    assert Mastermind
  end

  def test_it_can_generate_a_4_character_code
    code = @mm.create_code
    assert_equal 4, code.length
    assert_equal Array, code.class
  end

  def test_it_can_check_the_correct_number_of_correct_colors
    assert_equal 4, @mm.test_check_colors("rgby")
    assert_equal 2, @mm.test_check_colors("rgff")
    assert_equal 1, @mm.test_check_colors("rfff")
    assert_equal 0, @mm.test_check_colors("aaaa")
  end

  def test_it_can_check_number_of_correct_positions
    assert_equal 4, @mm.test_check_positions("rgby")
    assert_equal 3, @mm.test_check_positions("rrby")
    assert_equal 0, @mm.test_check_positions("ybgr")
  end

  def test_someone_can_win
    assert @mm.test_win?("rgby")
  end

  def test_someone_doesnt_win_when_they_should_not
    refute @mm.test_win?("rgbr")
    refute @mm.test_win?("rrrr")
    refute @mm.test_win?("rggr")
    refute @mm.test_win?("bbrr")
  end
end
