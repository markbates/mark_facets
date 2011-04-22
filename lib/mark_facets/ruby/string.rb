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
  
  def methodize
    m = self.dup
    m.strip!
    m.match(/([\?\=\!])$/)
    punc = $1
    m = m.underscore if m.respond_to?(:underscore)
    m.downcase!
    m = m[0..100] if m.length > 100
    m.gsub!(/(\W)/, '_')
    m.gsub!(/_+$/, '')
    m.gsub!(/^[^a-z]+/, '')
    [' ', '_', '?', '!', "="].each do |c|
      m.squeeze!(c)
    end
    raise NameError.new("#{self} cannot be converted to a valid method name!") if m.nil? || m == ''
    return "#{m}#{punc}"
  end
  
  # def methodize
  #   x = self
  #   
  #   # if we get down to a nil or an empty string raise an exception! 
  #   raise NameError.new("#{self} cannot be converted to a valid method name!") if x.nil? || x == ''
  #   
  #   # get rid of the big stuff in the front/back
  #   x.strip!
  #   
  #   # if we get down to a nil or an empty string raise an exception! 
  #   raise NameError.new("#{self} cannot be converted to a valid method name!") if x.nil? || x == ''
  #   
  #   x = x.underscore
  #   
  #   # get rid of spaces and make the _
  #   x.gsub!(' ', '_')
  #   # get rid of everything that isn't 'safe' a-z, 0-9, ?, !, =, _
  #   x.gsub!(/([^ a-zA-Z0-9\_\?\!\=]+)/n, '_')
  #   
  #   # if we get down to a nil or an empty string raise an exception! 
  #   raise NameError.new("#{self} cannot be converted to a valid method name!") if x.nil? || x == ''
  #   
  #   # condense multiple 'safe' non a-z chars to just one.
  #   # ie. ___ becomes _ !!!! becomes ! etc...
  #   [' ', '_', '?', '!', "="].each do |c|
  #     x.squeeze!(c)
  #   end
  #   
  #   # if we get down to a nil or an empty string raise an exception! 
  #   raise NameError.new("#{self} cannot be converted to a valid method name!") if x.nil? || x == ''
  #   
  #   #down case the whole thing
  #   x.downcase!
  #   
  #   # get rid of any characters at the beginning that aren't a-z
  #   while !x.match(/^[a-z]/)
  #     x.slice!(0)
  #     
  #     # if we get down to a nil or an empty string raise an exception! 
  #     raise NameError.new("#{self} cannot be converted to a valid method name!") if x.nil? || x == ''
  #   end
  #   
  #   # let's trim this bad boy down a bit now that we've cleaned it up, somewhat.
  #   # we should do this before cleaning up the end character, because it's possible to end up with a 
  #   # bad char at the end if you trim too late.
  #   x = x[0..100] if x.length > 100
  #   
  #   # get rid of any characters at the end that aren't safe
  #   while !x.match(/[a-z0-9\?\!\=]$/)
  #     x.slice!(x.length - 1)
  #     # if we get down to a nil or an empty string raise an exception! 
  #     raise NameError.new("#{self} cannot be converted to a valid method name!") if x.nil? || x == ''
  #   end
  #   
  #   # if we get down to a nil or an empty string raise an exception! 
  #   raise NameError.new("#{self} cannot be converted to a valid method name!") if x.nil? || x == ''
  #   
  #   # let's get rid of characters that don't belong in the 'middle' of the method.
  #   orig_middle = x[1..(x.length - 2)]
  #   n_middle = orig_middle.dup
  #   
  #   ['?', '!', "="].each do |c|
  #     n_middle.gsub!(c, "_")
  #   end
  #   
  #   # the previous gsub can leave us with multiple underscores that need cleaning up.
  #   n_middle.squeeze!("_")
  #   
  #   x.gsub!(orig_middle, n_middle)
  #   x.gsub!("_=", "=")
  #   x
  # end
  
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