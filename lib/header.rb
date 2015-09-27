module Cvme
  class Header < Document
  	TYPE = [:user, 
  		    :address, 
  		    :country, 
  		    :phone, 
  		    :city, 
  		    :email, 
  		    :province
  		   ]
    
  	attr_accessor *TYPE

  	def initialize
  	end	

  	def self.attributes
      TYPE
    end
  end
end