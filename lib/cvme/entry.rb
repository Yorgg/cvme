module Cvme
  class Entry < Document
    attr_accessor :name, :info
    def initialize(title, &block)
      @name = title
      @info = {}
    end
  end
end