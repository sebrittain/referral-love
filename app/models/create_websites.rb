class CreateWebsites < ActiveRecord::Migration
	def up
		create_table :groupon do |t|
			t.string :referral_code, :num_reports, :times_used
		end
	end
end