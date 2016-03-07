class Error < ActiveRecord::Base
  include Process
  def get_processed_error_input
    return @processed_error_input
  end

  # Processes SyntaxError
  # 
  # Returns a Hash with all the meaningful information about the error.
  def process_error_input


    if self.type_of_error == "SyntaxError"
      
      start_processed_error_input

    elsif self.type_of_error == "NoMemoryError"

      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }      
    elsif self.type_of_error == "ScriptError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }          
    elsif self.type_of_error == "LoadError"
      start_processed_error_input
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }          
    elsif self.type_of_error == "NotImplementedError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       } 
    elsif self.type_of_error == "SignalException"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }          
    elsif self.type_of_error == "Interrupt"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }          
    elsif self.type_of_error == "StandardError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }          
    elsif self.type_of_error == "ArgumentError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }          
    elsif self.type_of_error == "IndexError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }          
    elsif self.type_of_error == "StopIteration"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }             
    elsif self.type_of_error == "IOError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "EOFError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "LocalJumpError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "NameError"
      matches = self.error_input.match(/(\w*.rb):(\d*):/)
      other_matches = self.error_input.match(/method `(.*)' for (.*) /)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error,
        "problem" => other_matches[1],
        "what_they_called_it_on" => other_matches[2]
       }
    elsif self.type_of_error == "NoMethodError"
      matches = self.error_input.match(/(\w*.rb):(14):/)
                                    
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "RangeError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "FloatDomainError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "RegexpError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "RuntimeError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "SecurityError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "SystemCallError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "Errno"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "SystemStackError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "ThreadError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "TypeError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "ZeroDivisionError"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "SystemExit"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
    elsif self.type_of_error == "fatal"
      matches = self.error_input.match(/(\w*.rb):(14):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  
    end
  end
  def type_of_error
    match = self.error_input.match(/(SyntaxError|NoMemoryError|ScriptError|LoadError|NotImplementedError|SignalException|Interrupt|StandardError|ArgumentError|IndexError|StopIteration|IOError|EOFError|LocalJumpError|NameError|NoMethodError|RangeError|FloatDomainError|RegexpError|RuntimeError|SecurityError|SystemCallError|Errno|SystemStackError|ThreadError|TypeError|ZeroDivisionError|SystemExit|fatal)/)

    return match[1]
    #returns type of error
    #self.error_input.match(regex)
  end
  # 1. run your regex match on self.error_input
  # 2. build a hash that looks like this:

  # @processed_error_input = {
  #   "error_type" => matches[1],
  #   "file" => matches[2],
  #   "line" => matches[3]
  # }  

end