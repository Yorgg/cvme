module Cvme
  class Header

    #add more attributes if you like:
    METHODS = %i{user address city state country phone email}
    
    attr_accessor *METHODS
    
    def initialize
    end	
  end
end