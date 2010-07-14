module Ruby
  
  class << self
    
    def v19?
      RUBY_VERSION.match(/^1\.9/)
    end
    
    def v18?
      RUBY_VERSION.match(/^1\.8/)
    end
    
  end
  
end