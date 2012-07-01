class ReferralRecipientsController < ApplicationController
  # GET /referral_recipients
  # GET /referral_recipients.json
  def index
    @referral_recipients = ReferralRecipient.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @referral_recipients }
    end
  end

  # GET /referral_recipients/1
  # GET /referral_recipients/1.json
  def show
    @referral_recipient = ReferralRecipient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @referral_recipient }
    end
  end

  # GET /referral_recipients/new
  # GET /referral_recipients/new.json
  def new
    @referral_recipient = ReferralRecipient.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @referral_recipient }
    end
  end

  # GET /referral_recipients/1/edit
  def edit
    @referral_recipient = ReferralRecipient.find(params[:id])
  end

  # POST /referral_recipients
  # POST /referral_recipients.json
  def create
    @referral_recipient = ReferralRecipient.new(params[:referral_recipient])

    respond_to do |format|
      if @referral_recipient.save
        format.html { redirect_to @referral_recipient, notice: 'Referral Code is:' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /referral_recipients/1
  # PUT /referral_recipients/1.json
  def update
    @referral_recipient = ReferralRecipient.find(params[:id])

    respond_to do |format|
      if @referral_recipient.update_attributes(params[:referral_recipient])
        format.html { redirect_to @referral_recipient, notice: 'Referral recipient was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @referral_recipient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referral_recipients/1
  # DELETE /referral_recipients/1.json
  def destroy
    @referral_recipient = ReferralRecipient.find(params[:id])
    @referral_recipient.destroy

    respond_to do |format|
      format.html { redirect_to referral_recipients_url }
      format.json { head :no_content }
    end
  end
end
