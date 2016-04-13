require 'test_helper'
  #This is one of two unit tests
class NoMemoryErrorTest < Minitest::Test
  #This method tests the functionality of detecting syntax error messages
  def setup
    super
    @error = Error.new
    @error.error_input = "NoMemoryError (failed to allocate memory):C:/InstantRails-2.0-win/ruby/lib/ruby/gems/1.8/gems/activesupport-2.2.2/lib/active_support/cache.rb:60:in `create_main_object'"

    @parsed_error = ParsedError.new(@error.error_input)
    @parsed_error.process_error_input
  end

  def test_error_type
    assert_equal("NoMemoryError", @parsed_error.type_of_error)
  end

  def test_error_file
    assert_equal("cache.rb", @parsed_error.processed_error_input["file"])
  end

  def test_error_line
    assert_equal("60", @parsed_error.processed_error_input["line"])
  end

  def test_error_problem
    assert_equal(" `create_main_object'", @parsed_error.processed_error_input["problem"])
  end
  # Your tests are defined here.
end