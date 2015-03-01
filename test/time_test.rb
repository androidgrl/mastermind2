require "minitest"
require "minitest/autorun"
require "minitest/pride"
require_relative '../lib/time'

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
