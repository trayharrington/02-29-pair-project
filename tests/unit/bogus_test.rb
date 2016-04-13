require 'test_helper'
  #This is one of two unit tests
class BogusTest < Minitest::Test
  #This method tests the functionality of detecting syntax error messages
  def setup
    super
    @error = Error.new
    @error.error_input = "I am not a valid input."

    @parsed_error = ParsedError.new(@error.error_input)
    @parsed_error.process_error_input
  end

  def test_error_type
    assert_equal(nil, @parsed_error.type_of_error)
  end

  def test_error_file
    assert_equal(nil, @parsed_error.processed_error_input["file"])
  end

  def test_error_line
    assert_equal(nil, @parsed_error.processed_error_input["line"])
  end
  # Your tests are defined here.
end