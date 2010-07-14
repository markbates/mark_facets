module Math

  def self.log2(x)
     self.logBase(x, 2.0)
  end
  
  def self.logBase(x, base)
    self.log(x) / self.log(base)
  end

  def self.min(a, b)
     a < b ? a : b
  end

  def self.max(a, b)
     a > b ? a : b
  end

end