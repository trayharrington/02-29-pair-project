require 'test_helper'
  #This is one of two unit tests
class ArgumentErrorTest < Minitest::Test
  #This method tests the functionality of detecting argument error messages
  def setup
    super
    @error = Error.new
    @error.error_input = "ArgumentError: wrong number of arguments (given 1, expected 2..3)
    /Users/melindadeinert/Code/ruby-toy__string-segmentation/tests/string_segmenter_test.rb:7:in `test_string_segmenter'"

    @error.process_error_input
    
  end

  def test_error_type
    assert_equal("ArgumentError", @error.type_of_error)
  end

  def test_error_file
    assert_equal("string_segmenter_test.rb", @error.get_processed_error_input["file"])
  end

  def test_error_line
    assert_equal("7", @error.get_processed_error_input["line"])
  end
  
  def test_error_method
    assert_equal(" `test_string_segmenter'",@error.get_processed_error_input["method"])
  end
end