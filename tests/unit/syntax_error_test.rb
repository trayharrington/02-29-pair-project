require 'test_helper'

class SyntaxErrorTest < Minitest::Test
  #This method tests the functionality of detecting syntax error messages
  def setup
    super
    @error = Error.new
    @error.error_input = "/Users/Meier/.rbenv/versions/2.3.0/lib/ruby/gems/2.3.0/gems/rake-10.5.0/lib/rake/rake_test_loader.rb: /Users/Meier/Code/ruby-toy__string-segmentation/tests/dictionary_test.rb:8: syntax error, unexpected keyword_end, expecting ')' (SyntaxError)"

    @error.process_error_input
    # Your setup goes here.
  end

  def test_error_type
    assert_equal("SyntaxError", @error.type_of_error)
  end

  def test_error_file
    assert_equal("dictionary_test.rb", @error.get_processed_error_input["file"])
  end

  def test_error_line
    assert_equal("8", @error.get_processed_error_input["line"])
  end
  # Your tests are defined here.
end