require 'test_helper'

class TestTitlesControllerTest < ActionController::TestCase
  setup do
    @test_title = test_titles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_titles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_title" do
    assert_difference('TestTitle.count') do
      post :create, test_title: { department_id: @test_title.department_id, description: @test_title.description, price: @test_title.price, process: @test_title.process, remarks: @test_title.remarks, restriction: @test_title.restriction, social_note: @test_title.social_note, tat: @test_title.tat, title: @test_title.title }
    end

    assert_redirected_to test_title_path(assigns(:test_title))
  end

  test "should show test_title" do
    get :show, id: @test_title
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_title
    assert_response :success
  end

  test "should update test_title" do
    put :update, id: @test_title, test_title: { department_id: @test_title.department_id, description: @test_title.description, price: @test_title.price, process: @test_title.process, remarks: @test_title.remarks, restriction: @test_title.restriction, social_note: @test_title.social_note, tat: @test_title.tat, title: @test_title.title }
    assert_redirected_to test_title_path(assigns(:test_title))
  end

  test "should destroy test_title" do
    assert_difference('TestTitle.count', -1) do
      delete :destroy, id: @test_title
    end

    assert_redirected_to test_titles_path
  end
end
