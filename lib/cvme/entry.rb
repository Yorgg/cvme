module Cvme
  class Entry
    attr_accessor :name, :info
    def initialize(title, &block)
      @name = title
      @info = {}
    end
  end
end