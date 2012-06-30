class CreateReferralCandidates < ActiveRecord::Migration
  def change
    create_table :referral_candidates do |t|
      t.string :website
      t.string :referral_code
      t.string :num_reports
      t.string :times_used

      t.timestamps
    end
  end
end
