module Cvme
  class Group
    attr_accessor :name, :entries
    def initialize(title)
      @name = title
      @entries = []
    end
  end
end