class SubscribeUserToMailingListJob < ActiveJob::Base
  queue_as :default
  require 'gibbon'

  def perform(user)
    gibbon = Gibbon::Request.new(api_key: ENV.fetch('MAILCHIMP_KEY'))
    gibbon.timeout = 10
    gibbon.lists("").members.create(
      body:{
        email_address: user.email,
        status: "subscribed"
      })
  end

end
