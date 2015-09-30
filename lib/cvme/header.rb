module Cvme
  class Header

    #add more attributes if you like:
    ATTR = %i{user address city state country phone email}
    
    attr_accessor *ATTR
    
    def initialize
    end	
  end
end