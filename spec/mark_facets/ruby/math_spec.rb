require 'spec_helper'

describe Math do
  
  describe "log2" do
    
    it "should return the log2 of a given number" do
      Math.log2(5).to_s.should == '2.32192809488736'
      Math.log2(25).to_s.should == '4.64385618977472'
    end
    
  end
  
  describe 'logBase' do
    
    it 'should return the log of a given number with a particular base' do
      Math.logBase(5, 10).to_s.should == '0.698970004336019'
      Math.logBase(50, 10).to_s.should == '1.69897000433602'
    end
    
  end
  
  describe "min" do
    
    it "should return the smaller of the two numbers" do
      Math.min(2,5).should == 2
      Math.min(5,2).should == 2
      Math.min(2,2).should == 2
      Math.min(5.5,2).should == 2
      Math.min(2.5, 5.5).should == 2.5
    end
    
  end
  
  describe "max" do
    
    it "should return the larger of the two numbers" do
      Math.max(2,5).should == 5
      Math.max(5,2).should == 5
      Math.max(2,2).should == 2
      Math.max(5.5,2).should == 5.5
      Math.max(2.5, 5.5).should == 5.5
    end
    
  end
  
end