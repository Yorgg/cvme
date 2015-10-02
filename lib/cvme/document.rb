module Cvme 
  class Document
    attr_accessor :head, :groups 

    def initialize(*params, &block)
      @head    = Header.new
      @groups  = []  
      instance_eval &block
    end

    def get_binding
      binding
    end

    def method_missing(name, *params, &block)
      param = params.first
      case name
      when /header/ 
        block.call
      when /group/  
        create_group(param)
        block.call
      when /entry/  
        create_entry(param)
        block.call
      else
        update_header_attribute(name, param) || create_entry_item(name,param)
      end
    end


    private

    def create_group(param)
      @groups << Group.new(param)
    end

    def create_entry(param)
      @groups.last.entries << Entry.new(param)
    end

    def update_header_attribute(name, param)
      head.send("#{name}=", param) if @groups.empty? 
    end
     
    def create_entry_item(name,param)
      @groups.last.entries.last.info[name] = param
    end
  end
end