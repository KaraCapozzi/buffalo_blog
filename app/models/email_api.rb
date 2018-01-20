class EmailApi < ApplicationRecord

  after_create :subscribe_user_to_mailing_list

  def self.add_email(email)
    gibbon = Gibbon::API.new
    result = gb.lists.subscribe({:id => “campaign_list_id”, :email => email, :double_optin => false})
  end

private

  def subscribe_user_to_mailing_list
    SubscribeUserToMailingListJob.perform_later(self)
  end
end
