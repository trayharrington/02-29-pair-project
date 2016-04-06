class Error < ActiveRecord::Base
  include Process
  def get_processed_error_input
    return @processed_error_input
  end
  #get_processed_error_input displays the error information
  #
  # process_error_input, based on the value of type_of_error, begins a
  # 
  # unique search for the particular information to display
  def process_error_input
    if self.type_of_error == "SyntaxError"
      start_processed_syntax        
    elsif self.type_of_error == "NoMemoryError"
      start_processed_nomemory 
    elsif self.type_of_error == "ScriptError"
      start_processed_script       
    elsif self.type_of_error == "LoadError"
      start_processed_load
    elsif self.type_of_error == "NotImplementedError"
      start_processed_implemented
    elsif self.type_of_error == "SignalException"
      start_processed_signal  
    elsif self.type_of_error == "Interrupt"
      start_processed_interrupt
    elsif self.type_of_error == "StandardError"
      start_processed_standard
    elsif self.type_of_error == "ArgumentError"
      start_processed_argument
    elsif self.type_of_error == "IndexError"
      start_processed_index
    elsif self.type_of_error == "StopIteration"
      start_processed_iteration
    elsif self.type_of_error == "IOError"
      start_processed_ioe
    elsif self.type_of_error == "EOFError"
      start_processed_eofe
    elsif self.type_of_error == "LocalJumpError"
      start_processed_jump
    elsif self.type_of_error == "NameError"
      start_processed_name
    elsif self.type_of_error == "NoMethodError"
      start_processed_method
    elsif self.type_of_error == "RangeError"
      start_processed_range
    elsif self.type_of_error == "FloatDomainError"
      start_processed_float
    elsif self.type_of_error == "RegexpError"
      start_processed_regex
    elsif self.type_of_error == "RuntimeError"
      start_processed_runtime
    elsif self.type_of_error == "SecurityError"
      start_processed_security
    elsif self.type_of_error == "SystemCallError"
      start_processed_system
    elsif self.type_of_error == "Errno"
      start_processed_errno
    elsif self.type_of_error == "SystemStackError"
      start_processed_stack
    elsif self.type_of_error == "ThreadError"
      start_processed_thread
    elsif self.type_of_error == "TypeError"
      start_processed_type
    elsif self.type_of_error == "ZeroDivisionError"
      start_processed_division
    elsif self.type_of_error == "SystemExit"
      start_processed_exit
    elsif self.type_of_error == "fatal"
      start_processed_fatal
    end
  end
  def type_of_error
    match = self.error_input.match(/(SyntaxError|NoMemoryError|ScriptError|LoadError|NotImplementedError|SignalException|Interrupt|StandardError|ArgumentError|IndexError|StopIteration|IOError|EOFError|LocalJumpError|NameError|NoMethodError|RangeError|FloatDomainError|RegexpError|RuntimeError|SecurityError|SystemCallError|Errno|SystemStackError|ThreadError|TypeError|ZeroDivisionError|SystemExit|fatal)/)
    return match[1]
    #type_of_error searches only for the name of the error
    #the name might get found more than once, so we express to return '1'
  end
  
end