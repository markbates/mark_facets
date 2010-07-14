%w{decode_json delivered_emails enable_ssl authlogic rspec/all}.each do |f|
  p = File.expand_path(File.join(File.dirname(__FILE__), 'test', f))
  # puts p
  require p
end