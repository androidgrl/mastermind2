require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative "mastermind"
require_relative 'time'

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

class TestTime < Minitest::Test
  def test_it_exists
    assert Time
  end

  def test_elapsed_time_is_the_difference_between_end_time_and_start_time_for_half_second
    time = Time.new

    time.start_time
    sleep(0.5)
    time.end_time

    assert time.elapsed_time > 0.5
  end

  def test_elapsed_time_is_the_difference_between_end_time_and_start_time_for_quarter_second
    time = Time.new

    time.start_time
    sleep(0.25)
    time.end_time

    assert time.elapsed_time > 0.25
  end

end


  #time attribute
  #stop time method
  #elapsed time method
  # which pieces are state (@time, @end_time)
  # which pieces are behavior -- #start_time (starts the clock), #stop_time (stops the clock)
  # which pieces are calculations based on existing data -- #elapsed_time (calculate total time based on @time and @end_time)
  # assert @mm.elapsed_time > 0.25
  # assert @mm.elapsed_time < 0.5
