require 'spec_helper'

describe Math do
  
  describe "log2" do
    
    it "should return the log2 of a given number" do
      Math.log2(5).to_s.should == '2.321928094887362'
      Math.log2(25).to_s.should == '4.643856189774724'
    end
    
  end
  
  describe 'logBase' do
    
    it 'should return the log of a given number with a particular base' do
      Math.logBase(5, 10).to_s.should == '0.6989700043360187'
      Math.logBase(50, 10).to_s.should == '1.6989700043360185'
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
  
  describe "percentage" do
    
    it "should return the percentage of two numbers" do
      Math.percentage(0, 0).should == 0
      Math.percentage(0, 1).should == 0
      Math.percentage(1, 0).should == 0
      Math.percentage(4, 1).should == 25
      Math.percentage(4, 2).should == 50
      Math.percentage(4, 3).should == 75
      Math.percentage(4, 4).should == 100
      Math.percentage(4, 5).should == 125
    end
    
  end
  
end