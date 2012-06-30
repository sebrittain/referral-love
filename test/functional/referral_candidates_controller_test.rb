require 'test_helper'

class ReferralCandidatesControllerTest < ActionController::TestCase
  setup do
    @referral_candidate = referral_candidates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:referral_candidates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create referral_candidate" do
    assert_difference('ReferralCandidate.count') do
      post :create, referral_candidate: { num_reports: @referral_candidate.num_reports, referral_code: @referral_candidate.referral_code, times_used: @referral_candidate.times_used, website: @referral_candidate.website }
    end

    assert_redirected_to referral_candidate_path(assigns(:referral_candidate))
  end

  test "should show referral_candidate" do
    get :show, id: @referral_candidate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @referral_candidate
    assert_response :success
  end

  test "should update referral_candidate" do
    put :update, id: @referral_candidate, referral_candidate: { num_reports: @referral_candidate.num_reports, referral_code: @referral_candidate.referral_code, times_used: @referral_candidate.times_used, website: @referral_candidate.website }
    assert_redirected_to referral_candidate_path(assigns(:referral_candidate))
  end

  test "should destroy referral_candidate" do
    assert_difference('ReferralCandidate.count', -1) do
      delete :destroy, id: @referral_candidate
    end

    assert_redirected_to referral_candidates_path
  end
end
