class ReferralCandidate < ActiveRecord::Base
  after_initialize :init
  attr_accessible :num_reports, :referral_code, :times_used, :website

  def init
  	self.num_reports ||= "0"
  	self.times_used ||= "0"
  end
end
