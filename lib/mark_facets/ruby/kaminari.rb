if defined?(Kaminari)
  
  class Array
    
    def total_count
      self.size
    end
    
    def limit_value
      10
    end
    
    def offset_value
      0
    end
    
  end
  
end