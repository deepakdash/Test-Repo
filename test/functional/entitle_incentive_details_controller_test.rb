require 'test_helper'

class EntitleIncentiveDetailsControllerTest < ActionController::TestCase
  setup do
    @entitle_incentive_detail = entitle_incentive_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entitle_incentive_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entitle_incentive_detail" do
    assert_difference('EntitleIncentiveDetail.count') do
      post :create, entitle_incentive_detail: { address: @entitle_incentive_detail.address, contact_no: @entitle_incentive_detail.contact_no, contact_person: @entitle_incentive_detail.contact_person, dept: @entitle_incentive_detail.dept, designation: @entitle_incentive_detail.designation, dob: @entitle_incentive_detail.dob, entitle_incentives: @entitle_incentive_detail.entitle_incentives, name: @entitle_incentive_detail.name, rate: @entitle_incentive_detail.rate, ref_code: @entitle_incentive_detail.ref_code, specialize: @entitle_incentive_detail.specialize, tax_pan: @entitle_incentive_detail.tax_pan }
    end

    assert_redirected_to entitle_incentive_detail_path(assigns(:entitle_incentive_detail))
  end

  test "should show entitle_incentive_detail" do
    get :show, id: @entitle_incentive_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entitle_incentive_detail
    assert_response :success
  end

  test "should update entitle_incentive_detail" do
    put :update, id: @entitle_incentive_detail, entitle_incentive_detail: { address: @entitle_incentive_detail.address, contact_no: @entitle_incentive_detail.contact_no, contact_person: @entitle_incentive_detail.contact_person, dept: @entitle_incentive_detail.dept, designation: @entitle_incentive_detail.designation, dob: @entitle_incentive_detail.dob, entitle_incentives: @entitle_incentive_detail.entitle_incentives, name: @entitle_incentive_detail.name, rate: @entitle_incentive_detail.rate, ref_code: @entitle_incentive_detail.ref_code, specialize: @entitle_incentive_detail.specialize, tax_pan: @entitle_incentive_detail.tax_pan }
    assert_redirected_to entitle_incentive_detail_path(assigns(:entitle_incentive_detail))
  end

  test "should destroy entitle_incentive_detail" do
    assert_difference('EntitleIncentiveDetail.count', -1) do
      delete :destroy, id: @entitle_incentive_detail
    end

    assert_redirected_to entitle_incentive_details_path
  end
end
