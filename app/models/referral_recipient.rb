class ReferralRecipient < ActiveRecord::Base
  attr_accessible :referral_code, :website

  # referral.times_used.instance!
end
