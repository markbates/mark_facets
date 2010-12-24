# Dir.glob(File.join(File.dirname(__FILE__), 'mark_facets', '**/*.rb')).each do |f|
#   require File.expand_path(f)
# end

path = File.join(File.dirname(__FILE__), 'mark_facets')
ruby_path = File.join(path, 'ruby')
rails_path = File.join(path, 'rails')

%w{ruby string hash big_decimal math file magic_attributes will_paginate}.each do |f|
  p = File.expand_path(File.join(ruby_path, f))
  # puts p
  require p
end

if defined?(Rails)
  %w{rails time_zones}.each do |f|
    require File.expand_path(File.join(rails_path, f))
  end
end
