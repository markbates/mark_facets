require 'spec_helper'

describe File do
  
  describe "update" do
    
    before(:each) do
      File.open('foo.tmp', 'w') do |f|
        f.puts "this is the first line of my file"
        f.puts "this is the second line of my file"
      end
    end
    
    after(:each) do
      FileUtils.rm('foo.tmp')
    end
    
    it "should open up a file to update it's contents" do
      File.update('foo.tmp') do |file|
        file.gsub!('first', 'FIRST')
      end
      File.read('foo.tmp').should_not match(/first/)
      File.read('foo.tmp').should match(/FIRST/)
    end
    
  end
  
end
