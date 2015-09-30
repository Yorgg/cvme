module Cvme
  class Group < Document
    attr_accessor :name, :entries
    def initialize(title)
      @name = title
      @entries = []
    end
  end
end