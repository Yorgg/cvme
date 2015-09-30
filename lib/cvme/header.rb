module Cvme
  class Header < Document
    TYPE = [:user, 
            :address,
            :city,
            :state,
            :country, 
            :phone, 
            :email 
  		     ]
    attr_accessor *TYPE
    def initialize
    end	

    def self.attributes
      TYPE
    end
  end
end