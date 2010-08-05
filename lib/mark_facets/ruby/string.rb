require 'digest/md5'# if Ruby.v18?
class String
  
  def md5_hash
    Digest::MD5.hexdigest(self).to_s
  end
  
  def hexdigest
    Digest::SHA1.hexdigest(self)
  end
  
  def hexdigest!
    self.replace(self.hexdigest)
  end
  
  def to_bool
    case self.downcase
    when 'n', 'no', 'f', 'false', 'nay'
      return false
    end
    return true
  end
  
  alias_method :to_boolean, :to_bool
  
  class << self
    
    RANDOM_CHARS = [('A'..'H').to_a, ('J'..'N').to_a, ('P'..'T').to_a, ('W'..'Z').to_a, ('3'..'9').to_a].flatten
    
    def random(size = 20)
      newpass = ''
      1.upto(size) { |i| newpass << RANDOM_CHARS[rand(RANDOM_CHARS.size-1)] }
      return newpass.upcase
    end
    
    def cast_from(object)
      object.to_s
    end
    
  end
  
end