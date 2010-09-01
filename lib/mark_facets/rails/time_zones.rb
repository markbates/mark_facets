class ActiveSupport::TimeZone
  
  class << self
    
    def all_with_us_first
      zones = [ActiveSupport::TimeZone.us_zones.dup].flatten
      ActiveSupport::TimeZone.all.each {|z| zones << z unless zones.include?(z)}
      return zones
    end
    
    def options_for_select
      ActiveSupport::TimeZone.all_with_us_first.collect{|x| [x.to_s, x.name]}
    end
    
  end
  
end