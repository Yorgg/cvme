require_relative 'lib/cvme'
include Cvme
require 'erb'

Document.new do 
  header do 
    user     'Jon Yorg'
    email    'jyorgg@gmail.com'
    address  '14752 59th ave'
    city     'Surrey'
    province 'BC'
    phone    '7787132145'
  end
end


=begin
  group 'jobs' do  
    entry 'Marketing Coordinator' do
      date '2008-2015'
      description 'did lots of stuff'
    end
  end

  group 'projects' do
  	entry 'Web app: Goalr' do 
  	  url 'www.goalr.co'
      description 'This is a goal + task management tool'
  	end
  end
=end
 
