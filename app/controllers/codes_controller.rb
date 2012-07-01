class CodesController < ApplicationController
	def new
	end

	def create
	    @referral_candidate = ReferralCandidate.find_by_website(params[:code][:website], :order => "times_used")
	    @referral_candidate.times_used = (@referral_candidate.times_used.to_i + 1).to_s

		respond_to do |format|
		  if @referral_candidate.save
		    format.html { render action: "display" }
		  else
		    format.html { render action: "new" }
		  end
		end
	end

	def display

	end
end
