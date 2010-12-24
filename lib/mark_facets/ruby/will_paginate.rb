if defined?(WillPaginate)
  
  class Array
    
    def to_will_paginate(options = {})
      options.reverse_merge!({:page => 1, :per_page => self.size + 1, :total => self.size})
      results = WillPaginate::Collection.create(options[:page], options[:per_page], options[:total]) do |pager|
        pager.replace(self)
      end
      return results
    end
    
  end
  
end