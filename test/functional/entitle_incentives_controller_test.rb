require 'test_helper'

class EntitleIncentivesControllerTest < ActionController::TestCase
  setup do
    @entitle_incentive = entitle_incentives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entitle_incentives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create entitle_incentive" do
    assert_difference('EntitleIncentive.count') do
      post :create, entitle_incentive: { ref_type: @entitle_incentive.ref_type }
    end

    assert_redirected_to entitle_incentive_path(assigns(:entitle_incentive))
  end

  test "should show entitle_incentive" do
    get :show, id: @entitle_incentive
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @entitle_incentive
    assert_response :success
  end

  test "should update entitle_incentive" do
    put :update, id: @entitle_incentive, entitle_incentive: { ref_type: @entitle_incentive.ref_type }
    assert_redirected_to entitle_incentive_path(assigns(:entitle_incentive))
  end

  test "should destroy entitle_incentive" do
    assert_difference('EntitleIncentive.count', -1) do
      delete :destroy, id: @entitle_incentive
    end

    assert_redirected_to entitle_incentives_path
  end
end
