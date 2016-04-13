module Process 
  def start_processed_syntax
      @matches = self.error_input.match(/(\w*.rb):(\d*):/)       
      @processed_error_input = {
        "file" => @matches[1],
        "line" => @matches[2],
        "error_type" => self.type_of_error
       }          
  #The search is made given a specific RegEx uniqe to that type of message.
  #
  #The retrieved information is stored in a hash under 3 or 4 different keys
  #depending on the individual message.
  end
  def start_processed_nomemory
      @matches = self.error_input.match(/([a-zA-Z]*.rb).(:*\d*)...([^:]'*\D*.*')/)
      @processed_error_input = {
        "file" => @matches[1],
        "line" => @matches[2],
        "problem" => @matches[3],
        "error_type" => self.type_of_error
       }     
  end
  def start_processed_script
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }   
  end
  def start_processed_load
      matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }               
  end
  def start_processed_implimented
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       } 
  end
  def start_processed_signal
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }          
  end
  def start_processed_interrupt
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       } 
  end
  def start_processed_standard
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }          
  end
  def start_processed_argument
    matches = self.error_input.match(/(\w*)(.*\d.*)/) ###----need new filter                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }   
  end
  def start_processed_index
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }   
  end
  def start_processed_iteration
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       } 
  end
  def start_processed_ioe
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_eofe
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_jump
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_name
      matches = self.error_input.match(/(\w*.rb):(\d*):/)
      other_matches = self.error_input.match(/method `(.*)' for (.*) /)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error,
        "problem" => other_matches[1],
        "what_they_called_it_on" => other_matches[2]
       }
  end
  def start_processed_method
    matches = self.error_input.match(/(\w*.rb):(\d*):/)
                                    
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_range
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_float
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_regex
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_runtime
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_security
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_system
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_errno
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_stack
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_thread
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_type
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_division
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_exit
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
  def start_processed_fatal
    matches = self.error_input.match(/(\w*.rb):(\d*):/)                              
      @processed_error_input = {
        "file" => matches[1],
        "line" => matches[2],
        "error_type" => self.type_of_error
       }
  end
end 


