module Cvme 

  class Document
  	attr_accessor :head, :groups 
  	def initialize(*params, &block)
  	  @head  = Header.new
  	  @groups  = []
  	  instance_eval &block
   	end

  	def get_binding
  	  binding
  	end

  	def method_missing(name, *params, &block)
  	  param = params.first
      case name
      when /header/ then block.call
      when /group/  then create_group(param); block.call
      when /entry/  then create_entry(param); block.call
      else;  create_header(name, param) || create_entry_item(name,param)
      end
    end

    private

    def create_group(param)
      group = Group.new param
      @groups << group
    end

    def create_entry(param)
      entry = Entry.new(param)
      @groups.last.entries << entry
    end

    def create_header(name, param)
      head.send("#{name}=", param) if Header.attributes.include?(name)
  	end
     
    def create_entry_item(name,param)
  	  @groups.last.entries.last.info[name] = param
  	end
  end
end