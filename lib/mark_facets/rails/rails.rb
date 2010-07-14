module Rails
  
  class << self
    
    def v3?
      Rails.version.match(/^3\./)
    end
    
    def v2?
      Rails.version.match(/^2\./)
    end
    
  end
  
end