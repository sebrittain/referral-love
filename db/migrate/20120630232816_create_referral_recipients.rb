class CreateReferralRecipients < ActiveRecord::Migration
  def change
    create_table :referral_recipients do |t|
      t.string :website
      t.string :referral_code

      t.timestamps
    end
  end
end
