require 'test_helper'

class ReferralRecipientsControllerTest < ActionController::TestCase
  setup do
    @referral_recipient = referral_recipients(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referral_recipients)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referral_recipient" do
    assert_difference('ReferralRecipient.count') do
      post :create, referral_recipient: { referral_code: @referral_recipient.referral_code, website: @referral_recipient.website }
    end

    assert_redirected_to referral_recipient_path(assigns(:referral_recipient))
  end

  test "should show referral_recipient" do
    get :show, id: @referral_recipient
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referral_recipient
    assert_response :success
  end

  test "should update referral_recipient" do
    put :update, id: @referral_recipient, referral_recipient: { referral_code: @referral_recipient.referral_code, website: @referral_recipient.website }
    assert_redirected_to referral_recipient_path(assigns(:referral_recipient))
  end

  test "should destroy referral_recipient" do
    assert_difference('ReferralRecipient.count', -1) do
      delete :destroy, id: @referral_recipient
    end

    assert_redirected_to referral_recipients_path
  end
end
