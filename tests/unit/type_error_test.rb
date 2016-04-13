require 'test_helper'
  #This is one of two unit tests
class TypeErrorTest < Minitest::Test
  #This method tests the functionality of detecting argument error messages
  def setup
    super

    @error = Error.new
    @error.error_input = "TypeError: no implicit conversion of String into Integer
    /Users/melindadeinert/Code/ruby-toy__string-segmentation/lib/string_segmenter.rb:8:in `[]'"

    @parsed_error = ParsedError.new(@error.error_input)
    @parsed_error.process_error_input
  end

  def test_error_type
    assert_equal("TypeError", @parsed_error.type_of_error)
  end

  def test_error_file
    assert_equal("string_segmenter.rb", @parsed_error.processed_error_input["file"])
  end

  def test_error_line
    assert_equal("8", @parsed_error.processed_error_input["line"])
  end
  
end