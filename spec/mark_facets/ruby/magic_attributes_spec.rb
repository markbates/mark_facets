require 'spec_helper'

class Fairy
  include MagicAttributes
end

class UpcaseFairy
  include MagicAttributes
  
  def name=(n)
    super(n.upcase)
  end
  
end

describe MagicAttributes do
  
  it "should give magical attributes to the class" do
    f = Fairy.new(:weapon => 'wand', :name => 'tinker bell')
    f.weapon.should == 'wand'
    f.name.should == 'tinker bell'
    f.name = 'Tinker Bell'
    f.name.should == 'Tinker Bell'
  end
  
  it "should call methods if they exist" do
    f = UpcaseFairy.new(:weapon => 'wand', :name => 'tinker bell')
    f.weapon.should == 'wand'
    f.name.should == 'TINKER BELL'
  end
  
  it "should work if a nil is passed in" do
    f = Fairy.new(nil)
    f.attributes.should be_empty
    f.attributes.should be_kind_of(Hashie::Mash)
  end
  
end