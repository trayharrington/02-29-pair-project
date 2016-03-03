require 'test_helper'

class ErrorTest < Minitest::Test
  def setup
    super
    
    # Your setup goes here.
  end

  def test_syntax_error_type
    @error = Error.new
    @error.error_input = "/Users/Meier/.rbenv/versions/2.3.0/lib/ruby/gems/2.3.0/gems/rake-10.5.0/lib/rake/rake_test_loader.rb: /Users/Meier/Code/ruby-toy__string-segmentation/tests/dictionary_test.rb:8: syntax error, unexpected keyword_end, expecting ')' (SyntaxError)"

    @error.process_error_input

    assert_equal("SyntaxError", @error.get_processed_error_input["error_type"])
  end

  def test_syntax_error_file
    @error = Error.new
    @error.error_input = "/Users/Meier/.rbenv/versions/2.3.0/lib/ruby/gems/2.3.0/gems/rake-10.5.0/lib/rake/rake_test_loader.rb: /Users/Meier/Code/ruby-toy__string-segmentation/tests/dictionary_test.rb:8: syntax error, unexpected keyword_end, expecting ')' (SyntaxError)"

    @error.process_error_input

    assert_equal("dictionary_test.rb", @error.get_processed_error_input["file"])
  end

  def test_syntax_error_line
    @error = Error.new
    @error.error_input = "/Users/Meier/.rbenv/versions/2.3.0/lib/ruby/gems/2.3.0/gems/rake-10.5.0/lib/rake/rake_test_loader.rb: /Users/Meier/Code/ruby-toy__string-segmentation/tests/dictionary_test.rb:8: syntax error, unexpected keyword_end, expecting ')' (SyntaxError)"

    @error.process_error_input

    assert_equal("8", @error.get_processed_error_input["line"])
  end

  # Your tests are defined here.
end