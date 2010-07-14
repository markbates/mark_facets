if defined?(RSpec) || defined?(Spec)
  %w{should/render_404 should/have_same_elements}.each do |f|
    require File.expand_path(File.join(File.dirname(__FILE__), f))
  end
end