require 'spec_helper'

describe Hash do
  
  describe "to_mash" do
    
    it "should convert a hash to a mash" do
      h = {:one => 1, :two => 2, :letters => {:lower => {:a => 'a', :b => 'b'}, :upper => {:c => 'C', :d => 'D'}, :ee => 'EE'}}
      m = h.to_mash
      m.should be_kind_of(Hashie::Mash)
      m.letters.should be_kind_of(Hashie::Mash)
      m.letters.lower.should be_kind_of(Hashie::Mash)
      m.letters.upper.should be_kind_of(Hashie::Mash)
    end
    
  end
  
end