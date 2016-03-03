class Error < ActiveRecord::Base

  def get_processed_error_input
    return @processed_error_input
  end

  # Processes SyntaxError
  # 
  # Returns a Hash with all the meaningful information about the error.
  def process_error_input
    # binding.pry
    matches = self.error_input.match(/\b([_.*a-z]*\.rb):(\d)\b/)
    @processed_error_input = {
     "file" => matches[1],
     "line" => matches[2],
     "error_type" => "SyntaxError"
    } 
  
  end

  # 1. run your regex match on self.error_input
  # 2. build a hash that looks like this:

  # @processed_error_input = {
  #   "error_type" => matches[1],
  #   "file" => matches[2],
  #   "line" => matches[3]
  # }  

end