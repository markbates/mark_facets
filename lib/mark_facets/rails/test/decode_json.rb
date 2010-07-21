def decode_json(json)
  res = ActiveSupport::JSON.decode(json)
  res = res.to_mash if res.is_a?(Hash)
  return res
end