require 'spec_helper'

describe String do
  
  describe 'cast_from' do
    
    it 'should cast objects to String' do
      String.cast_from(10.0).should == '10.0'
    end
    
  end
  
  describe 'random' do
    
    it 'should return a randomly generated string' do
      x = String.random
      x.size.should == 20
      x.should match(/^[a-z\d]+$/i)
    end
    
    it 'should return a randomly generated string of a certain size' do
      x = String.random(5)
      x.size.should == 5
      x.should match(/^[a-z\d]+$/i)
    end
    
  end
  
  describe 'to_bool' do
    
    it 'should return false if the string is a false string' do
      %w{n N no NO No f F false FALSE False nay NAY Nay}.each do |w|
        w.to_bool.should be_false
      end
    end
    
    it 'should return true for any string that isnt a false string' do
      %w{y Y yes YES Yes t T true TRUE True aye AYE aye poop Fart}.each do |w|
        w.to_bool.should be_true
      end
    end
    
  end
  
  describe 'to_boolean' do
    
    it 'should alias to_bool' do
      'y'.to_boolean.should == 'y'.to_bool
      'n'.to_boolean.should == 'n'.to_bool
    end
    
  end
  
  describe 'md5_hash' do
    
    it 'should return an md5 hash of the String' do
      'bob@example.com'.md5_hash.should == '4b9bb80620f03eb3719e0a061c14283d'
    end
    
  end
  
  describe 'hexdigest' do
    
    it 'should return a Digest::SHA1.hexdigest version of the String' do
      'Hello World'.hexdigest.should == '0a4d55a8d778e5022fab701977c5d840bbc486d0'
    end
    
  end
  
  describe 'hexdigest!' do
    
    it 'should destructively replace the string with a Digest::SHA1.hexdigest version' do
      x = 'Hello World'
      x.hexdigest!.should == '0a4d55a8d778e5022fab701977c5d840bbc486d0'
      x.should == '0a4d55a8d778e5022fab701977c5d840bbc486d0'
    end
    
  end
  
end
