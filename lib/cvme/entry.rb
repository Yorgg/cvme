module Cvme
  class Entry
  	METHODS = %i{description date url b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 b11 b12 b13 b14 b15 b16 b17 b18 b19 b20}

    attr_reader :name, :info
    def initialize(title, &block)
      @name = title
      @info = {}
    end
  end
end