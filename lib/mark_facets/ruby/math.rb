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
  
  def self.percentage(n1, n2)
    return 0 if n2 == 0 || n1 == 0
    p = ((n2.to_f / n1.to_f) * 100)
    return p
  end

end