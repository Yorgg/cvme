module Cvme 
  class Document
    attr_accessor :head, :groups 

    def initialize(*params, &block)
      @head    = Header.new
      @groups  = []
      create_methods(:header, Header::METHODS)
      create_methods(:entry, Entry::METHODS)
      instance_eval &block
    end

    def get_binding
      binding
    end

    def header(&block)
      block.call
    end

    def group(param, &block)
      create_group(param)
      block.call
    end

    def entry(param, &block)
      create_entry(param)
      block.call
    end

    private

    def create_methods(type, methods)
      Document.class_eval do 
        methods.each do |name|
          define_method(name) do |param|
            update_header_attribute(name, param) if type == :header 
            create_entry_item(name, param) if type == :entry
          end
        end
      end
    end

    def create_group(param)
      groups << Group.new(param)
    end

    def create_entry(param)
      groups.last.entries << Entry.new(param)
    end

    def create_entry_item(name,param)
      groups.last.entries.last.info[name] = param
    end

    def update_header_attribute(name, param)
      head.send("#{name}=", param) if groups.empty? 
    end
  end
end