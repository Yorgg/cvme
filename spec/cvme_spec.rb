require 'spec_helper'
describe Cvme do

  let :document do 
    Document.new do 
      header do 
        user     'Franko Mama'
        email    'frank@gmail.com'
        address  '8888 10th ave'
        city     'Peace Ville'
        province 'BC'
        phone    '778999888'
      end
    end
  end
  
  it 'has a version number' do
    expect(Cvme::VERSION).not_to be nil
  end

  it 'creates a document object' do
    expect(document).to_not eq nil
  end
  
  it 'creates a header object' do
    expect(document.head).to_not eq nil
  end
  
  it 'creates instance variables for header object' do
    expect(document.head.user).to eq     'Franko Mama'
    expect(document.head.email).to eq    'frank@gmail.com'
    expect(document.head.address).to eq  '8888 10th ave'
    expect(document.head.city).to eq     'Peace Ville'
    expect(document.head.province).to eq 'BC'
    expect(document.head.phone).to eq    '778999888'
  end
  
end
