module Cvme 
  class Document
  	attr_accessor :head, :groups, :entries
  	def initialize(*params, &block)
  	  @head  = Header.new
  	  @groups  = %w{}
  	  @entries = []
  	  @current_group = nil
  	  instance_eval &block
  	end

  	def method_missing(name, *params, &block)
      if /header/ =~ name
      	p self.head
      	instance_eval &block 
      end

      if /group/ =~ name
      	group = Group.new(params.first)
      	@current_group = group
      end
 
      case name.to_sym
      when :user     then head.user    = params.first
  	  when :address  then head.address = params.first
  	  when :country  then head.country = params.first
  	  when :phone    then head.phone   = params.first
  	  when :city     then head.city    = params.first
  	  when :email    then head.email   = params.first
  	  when :province then head.province= params.first
  	  end
    end
  end
end
 