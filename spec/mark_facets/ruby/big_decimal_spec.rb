require 'spec_helper'

describe BigDecimal do
  
  describe 'inspect' do
    
    it 'should use the to_s for inspect' do
      bd = BigDecimal.new('10.0')
      bd.inspect.should == bd.to_s('F')
      bd.inspect.should == '10.0'
    end
    
  end
  
end
