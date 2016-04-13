require 'test_helper'
  #This is one of two unit tests
class ArgumentErrorTest < Minitest::Test
  #This method tests the functionality of detecting argument error messages
  def setup
    super
    @error = Error.new
    @error.error_input = "ArgumentError: wrong number of arguments (given 2, expected 1)"

    @error.process_error_input
    # Your setup goes here.
  end

  def test_error_type
    assert_equal("ArgumentError", @error.type_of_error)
  end

  def test_error_file
    assert_equal("ArgumentError", @error.get_processed_error_input["file"])
  end

  def test_error_line
    assert_equal(": wrong number of arguments (given 2, expected 1)", @error.get_processed_error_input["line"])
  end
  # Your tests are defined here.
end