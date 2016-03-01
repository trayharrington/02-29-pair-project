class Error < ActiveRecord::Base

def error_dictionary
  errors = ['NoMethodError']
end
  y = ".rb"
  x = "NoMethodError"
def find_error
  if string.include?(x)
    @g = "NoMethodError"
    return @g
  end
  if string.include?(y)
    @y = "line from message"
    return @y
  end
end
end