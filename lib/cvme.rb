require_relative  'cvme/version'
require_relative  'document'
require_relative  'group'
require_relative  'header'
require_relative  'entry'
require 'erb'

module Cvme
  def self.create(&block)
  	d = Document.new(&block)
  	file = File.open("lib/template.html.erb", 'r')
  	erb = ERB.new(file.read)
  	file.close
  	file = File.open('lib/cv.html', 'w')
  	file.puts erb.result(d.get_binding)
  	file.close
  	d
  end
end