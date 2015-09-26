module Cvme
  class Header < Document
  	attr_accessor :user, :address, :country, :phone, :city, :email, :province
  	def initialize
  	end	
  end
end