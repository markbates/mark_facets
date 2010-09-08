module MagicAttributes
  
  class << self
    
    def included(klass)
      klass.class_eval do
        attr_accessor :attributes
      end
    end
    
  end
  
  def initialize(attributes = {})
    self.attributes = (attributes || {}).to_mash
    self.attributes.each do |k, v|
      self.send("#{k}=", v) if self.respond_to?("#{k}=")
    end
  end
  
  def method_missing(sym, *args, &block)
    self.attributes.send(sym, *args)
  end
  
end