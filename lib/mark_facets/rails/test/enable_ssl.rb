def enable_ssl
  request.env['HTTPS'] = 'on'
end