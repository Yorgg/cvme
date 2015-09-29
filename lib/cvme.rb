require_relative  'cvme/version'
require_relative  'document'
require_relative  'group'
require_relative  'header'
require_relative  'entry'
require 'erb'

module Cvme
  def self.create(&block)
  	doc = Document.new(&block)
  	template = File.open("lib/template.html.erb", 'r')
  	erb = ERB.new(template.read)
  	template.close
  	html = File.open('lib/cv.html', 'w')
  	html.puts erb.result(doc.get_binding)
  	html.close
  	doc #return document (so tests can work)
  end
end