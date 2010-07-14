require 'bigdecimal'
class BigDecimal
  
  def inspect
    self.to_s('F')
  end
  
end