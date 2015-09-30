require 'spec_helper'

describe 'html' do
  
  let(:document) {document1()}
  let(:file_content) { File.read('test_cv.html') }
    
  it "creates header" do
    expect(file_content).to include('Franky Jones')
    expect(file_content).to include('frank@gmail.com')
    expect(file_content).to include('8888 10th ave')
    expect(file_content).to include('Peace Ville')
    expect(file_content).to include('BC')
    expect(file_content).to include('778999888')
  end

  it "creates jobs" do
    expect(file_content).to include 'Jobs'  
    expect(file_content).to include 'Cleaner'  
    expect(file_content).to include '2008-2015'
    expect(file_content).to include 'Basic cleaning duties'
    expect(file_content).to include 'used windex'
    expect(file_content).to include 'waxed floors'
  end

  it "creates projects" do
    expect(file_content).to include 'CV DSL'  
    expect(file_content).to include 'Projects'  
    expect(file_content).to include '2015'
    expect(file_content).to include 'Made a CV DSL'
  end
end