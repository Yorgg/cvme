module Cvme
  class Group < Document
  	def initialize(title, entries)
  	  @name = title
  	  @entries = []
  	end
  end
end