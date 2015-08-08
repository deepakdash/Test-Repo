require 'test_helper'

class EntitleDiscountsControllerTest < ActionController::TestCase
  setup do
    @entitle_discount = entitle_discounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entitle_discounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entitle_discount" do
    assert_difference('EntitleDiscount.count') do
      post :create, entitle_discount: { ref_code: @entitle_discount.ref_code, ref_type: @entitle_discount.ref_type }
    end

    assert_redirected_to entitle_discount_path(assigns(:entitle_discount))
  end

  test "should show entitle_discount" do
    get :show, id: @entitle_discount
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entitle_discount
    assert_response :success
  end

  test "should update entitle_discount" do
    put :update, id: @entitle_discount, entitle_discount: { ref_code: @entitle_discount.ref_code, ref_type: @entitle_discount.ref_type }
    assert_redirected_to entitle_discount_path(assigns(:entitle_discount))
  end

  test "should destroy entitle_discount" do
    assert_difference('EntitleDiscount.count', -1) do
      delete :destroy, id: @entitle_discount
    end

    assert_redirected_to entitle_discounts_path
  end
end
