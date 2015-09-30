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
    template = create_template(get_path(template_path)) #creates ERB file
    create_html(doc, creation_path, template) #generates the html file
    doc #return document for testing
  end
  
  private

  def self.get_path(name)
    File.join( File.dirname(__FILE__), name )
  end

  def self.create_template(path)
     ERB.new(File.read(path))
  end
  
  def self.create_html(doc, path, template)
    File.write(path, template.result(doc.get_binding))
  end
end