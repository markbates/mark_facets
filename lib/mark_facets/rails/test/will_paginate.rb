if defined?(WillPaginate)
  
  def stub_will_paginate(array, options = {})
    options.reverse_merge!({:page => 1, :per_page => array.size, :total => array.size})
    results = WillPaginate::Collection.create(options[:page], options[:per_page], options[:total]) do |pager|
      pager.replace(array)
    end
    return results
  end
  
end