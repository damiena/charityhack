require 'test_helper'

class GivesControllerTest < ActionController::TestCase
  setup do
    @gife = gives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:gives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create gife" do
    assert_difference('Give.count') do
      post :create, gife: { charityid: @gife.charityid, charityname: @gife.charityname, hours: @gife.hours }
    end

    assert_redirected_to gife_path(assigns(:gife))
  end

  test "should show gife" do
    get :show, id: @gife
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @gife
    assert_response :success
  end

  test "should update gife" do
    put :update, id: @gife, gife: { charityid: @gife.charityid, charityname: @gife.charityname, hours: @gife.hours }
    assert_redirected_to gife_path(assigns(:gife))
  end

  test "should destroy gife" do
    assert_difference('Give.count', -1) do
      delete :destroy, id: @gife
    end

    assert_redirected_to gives_path
  end
end
