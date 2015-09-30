require 'cvme/document'
require 'cvme/group'
require 'cvme/header'
require 'cvme/entry'
require 'erb'

module Cvme
  def self.create(creation_path, template_name, &block)
  	doc = Document.new(&block) #runs through the nested blocks and creates
  							               #Document, Header, Group and Entry objects
                               
    template_path = "cvme/templates/#{template_name}.html.erb"
    template = create_template(get_path template_path)
    create_html(doc, creation_path, template) #generates the html file
    doc #return document for unit testing
  end
  
  private

  def self.get_path(name)
    File.join( File.dirname(__FILE__), name )
  end

  def self.create_template(path)
    template = File.open(path, 'r')
    erb = ERB.new(template.read)
    template.close
    erb
  end
  
  def self.create_html(doc, path, template)
    html = File.open(path, 'w')
    html.puts template.result(doc.get_binding)
    html.close
  end
end