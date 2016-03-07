module Process 
  def start_processed_error_input
      @matches = self.error_input.match(/(\w*.rb):(\d*):/)       
      @processed_error_input = {
        "file" => @matches[1],
        "line" => @matches[2],
        "error_type" => self.type_of_error
       }          

  end
end


