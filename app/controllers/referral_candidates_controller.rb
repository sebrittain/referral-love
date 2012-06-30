class ReferralCandidatesController < ApplicationController
  # GET /referral_candidates
  # GET /referral_candidates.json
  def index
    @referral_candidates = ReferralCandidate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @referral_candidates }
    end
  end

  # GET /referral_candidates/1
  # GET /referral_candidates/1.json
  def show
    @referral_candidate = ReferralCandidate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @referral_candidate }
    end
  end

  # GET /referral_candidates/new
  # GET /referral_candidates/new.json
  def new
    @referral_candidate = ReferralCandidate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @referral_candidate }
    end
  end

  # GET /referral_candidates/1/edit
  def edit
    @referral_candidate = ReferralCandidate.find(params[:id])
  end

  # POST /referral_candidates
  # POST /referral_candidates.json
  def create
    @referral_candidate = ReferralCandidate.new(params[:referral_candidate])

    respond_to do |format|
      if @referral_candidate.save
        format.html { redirect_to @referral_candidate, notice: 'Referral candidate was successfully created.' }
        format.json { render json: @referral_candidate, status: :created, location: @referral_candidate }
      else
        format.html { render action: "new" }
        format.json { render json: @referral_candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /referral_candidates/1
  # PUT /referral_candidates/1.json
  def update
    @referral_candidate = ReferralCandidate.find(params[:id])

    respond_to do |format|
      if @referral_candidate.update_attributes(params[:referral_candidate])
        format.html { redirect_to @referral_candidate, notice: 'Referral candidate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @referral_candidate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referral_candidates/1
  # DELETE /referral_candidates/1.json
  def destroy
    @referral_candidate = ReferralCandidate.find(params[:id])
    @referral_candidate.destroy

    respond_to do |format|
      format.html { redirect_to referral_candidates_url }
      format.json { head :no_content }
    end
  end
end
