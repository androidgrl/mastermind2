require_relative 'test_helper'
require_relative '../lib/printer'

class TestPrinter < Minitest::Test

  def setup
    @printer = Printer.new
  end

  def test_it_exists
    assert Printer
  end

  def test_it_has_a_main_menu_query_output
    assert @printer.main_menu_query.include?("Would")
  end

  def test_it_has_an_admonishment_output
    assert @printer.admonishment.include?("quitter")
  end

  def test_it_has_instructions_output
    assert @printer.instructions.include?("beginning")
  end

  def test_it_has_a_first_guess_prompt_output
    assert @printer.first_guess_prompt.include?("beginner")
  end

  def test_it_has_a_recurring_guess_prompt_output
    assert @printer.recurring_guess_prompt.include?("guess")
  end

  def test_it_has_a_mid_game_goodbye_output
    assert @printer.mid_game_goodbye.include?("Sorry")
  end

  def test_it_has_an_input_length_too_short_output
    assert @printer.input_length_too_short.include?("short")
  end

  def test_it_has_an_input_length_too_long_output
    assert @printer.input_length_too_long.include?("long")
  end

  def test_it_has_an_input_invalid_color_output
    assert @printer.input_invalid_color.include?("color")
  end

  def test_it_has_a_guess_stats_output
    assert @printer.guess_stats("rrrr", 2, 2).include?("correct")
  end

  def test_it_has_an_ask_play_again_output
    assert @printer.ask_play_again.include?("again")
  end

  def test_it_has_a_go_again_output
    assert @printer.go_again.include?("Here we go again!")
  end
end
