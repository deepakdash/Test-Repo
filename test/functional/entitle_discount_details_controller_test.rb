require 'test_helper'

class EntitleDiscountDetailsControllerTest < ActionController::TestCase
  setup do
    @entitle_discount_detail = entitle_discount_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entitle_discount_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entitle_discount_detail" do
    assert_difference('EntitleDiscountDetail.count') do
      post :create, entitle_discount_detail: { address: @entitle_discount_detail.address, contact_no: @entitle_discount_detail.contact_no, contact_person: @entitle_discount_detail.contact_person, dept: @entitle_discount_detail.dept, designation: @entitle_discount_detail.designation, dob: @entitle_discount_detail.dob, entitle_discount_id: @entitle_discount_detail.entitle_discount_id, name: @entitle_discount_detail.name, rate: @entitle_discount_detail.rate, ref_code: @entitle_discount_detail.ref_code, specialize: @entitle_discount_detail.specialize, tax_pan: @entitle_discount_detail.tax_pan }
    end

    assert_redirected_to entitle_discount_detail_path(assigns(:entitle_discount_detail))
  end

  test "should show entitle_discount_detail" do
    get :show, id: @entitle_discount_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entitle_discount_detail
    assert_response :success
  end

  test "should update entitle_discount_detail" do
    put :update, id: @entitle_discount_detail, entitle_discount_detail: { address: @entitle_discount_detail.address, contact_no: @entitle_discount_detail.contact_no, contact_person: @entitle_discount_detail.contact_person, dept: @entitle_discount_detail.dept, designation: @entitle_discount_detail.designation, dob: @entitle_discount_detail.dob, entitle_discount_id: @entitle_discount_detail.entitle_discount_id, name: @entitle_discount_detail.name, rate: @entitle_discount_detail.rate, ref_code: @entitle_discount_detail.ref_code, specialize: @entitle_discount_detail.specialize, tax_pan: @entitle_discount_detail.tax_pan }
    assert_redirected_to entitle_discount_detail_path(assigns(:entitle_discount_detail))
  end

  test "should destroy entitle_discount_detail" do
    assert_difference('EntitleDiscountDetail.count', -1) do
      delete :destroy, id: @entitle_discount_detail
    end

    assert_redirected_to entitle_discount_details_path
  end
end
