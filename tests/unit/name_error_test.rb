require 'test_helper'
  #this method ensures consistancy in the area of sustainability
class NameErrorTest < Minitest::Test          
  #this method tests the functionality of detecting Name Errors
  def setup
    super
    @error = Error.new
    @error.error_input = "/Users/Archimedes/Code/ruby-toy__string-segmentation/lib/string_segmenter.rb:14:in `segment_string': undefined local variable or method `testword' for main:Object (NameError)
      Did you mean?  test_word"

    @error.process_error_input
    # Your setup goes here.
  end

  def test_error_type
    assert_equal("NameError", @error.type_of_error)
  end

  def test_error_file
    assert_equal("string_segmenter.rb", @error.get_processed_error_input["file"])
  end

  def test_error_line
    assert_equal("14", @error.get_processed_error_input["line"])
  end

  def test_error_undefined_local_variable
    assert_equal("testword", @error.get_processed_error_input["problem"])
  end

  def test_error_what_they_called_it_on
    assert_equal("main:Object", @error.get_processed_error_input["what_they_called_it_on"])
  end
  # Your tests are defined here.
end