require 'gibbon'


gibbon = Gibbon::Request.new(api_key: ENV["MAILCHIMP_KEY"], symbolize_keys: true)

Gibbon::Request.api_key = ENV["MAILCHIMP_KEY"]
Gibbon::Request.timeout = 15
Gibbon::Request.open_timeout = 15
Gibbon::Request.symbolize_keys = true
Gibbon::Request.debug = false
