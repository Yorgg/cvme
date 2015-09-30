require 'spec_helper'

describe Object do
  let(:document) {document1()}
  
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
    expect(document.head.user).to eq    'Franky Jones'
    expect(document.head.email).to eq   'frank@gmail.com'
    expect(document.head.address).to eq '8888 10th ave'
    expect(document.head.city).to eq    'Peace Ville'
    expect(document.head.state).to eq   'BC'
    expect(document.head.phone).to eq   '778999888'
  end

  it 'creates two groups' do
    expect(document.groups.first.name).to eq  'Jobs'
    expect(document.groups.last.name).to eq   'Projects'
  end
  
  it 'creates an entry inside both groups' do
    expect(document.groups.first.entries.length).to eq  2
    
    expect(document.groups.first.entries.first.name).to eq 'Cleaner'
    expect(document.groups.first.entries.first.info[:date]).to eq '2008-2015'
    expect(document.groups.first.entries.first.info[:description]).to eq 'Basic cleaning duties'
    
    expect(document.groups.first.entries.last.name).to eq 'Garbage Man'
    expect(document.groups.first.entries.last.info[:date]).to eq '2001-2003'
    expect(document.groups.first.entries.last.info[:description]).to eq 'picked up garbage'
  end

  it 'creates an entry inside the group' do
  end
  
end
