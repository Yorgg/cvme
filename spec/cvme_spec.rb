require 'spec_helper'
describe Cvme do

  let :document do 
    Cvme.create do 
      header do 
        user     'Franko Mama'
        email    'frank@gmail.com'
        address  '8888 10th ave'
        city     'Peace Ville'
        province 'BC'
        phone    '778999888'
      end
      group 'Jobs' do  
        entry 'Cleaner' do
          date '2008-2015'
          description 'did lots of stuff'
        end

        entry 'Garbage Man' do
          date '2001-2003'
          description 'picked up garbage'
        end
      end

      group 'Projects' do  
        entry 'CV DSL' do
          date '2015'
          description 'Made a CV DSL'
        end
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

  it 'creates two groups' do
    expect(document.groups.first.name).to eq  'Jobs'
    expect(document.groups.last.name).to eq   'Projects'
  end
  
  it 'creates an entry inside both groups' do
    expect(document.groups.first.entries.length).to eq  2
    expect(document.groups.first.entries.first.name).to eq 'Cleaner'
    expect(document.groups.first.entries.first.info[:date]).to eq '2008-2015'
    expect(document.groups.first.entries.first.info[:description]).to eq 'did lots of stuff'
    expect(document.groups.first.entries.last.name).to eq 'Garbage Man'
    expect(document.groups.first.entries.last.info[:date]).to eq '2001-2003'
    expect(document.groups.first.entries.last.info[:description]).to eq 'picked up garbage'
  end

  it 'creates an entry inside the group' do
  end
  
  
end
