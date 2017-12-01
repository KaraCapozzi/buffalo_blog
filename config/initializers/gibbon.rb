require 'gibbon'

gibbon = Gibbon::Request.new(api_key: "your_api_key")

Gibbon::Request.api_key = "your_api_key"
Gibbon::Request.timeout = 15
Gibbon::Request.open_timeout = 15
Gibbon::Request.symbolize_keys = true
Gibbon::Request.debug = false
