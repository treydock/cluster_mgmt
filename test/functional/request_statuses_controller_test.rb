require 'test_helper'

class RequestStatusesControllerTest < ActionController::TestCase
  setup do
    @request_status = request_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:request_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request_status" do
    assert_difference('RequestStatus.count') do
      post :create, :request_status => { :display_name => @request_status.display_name, :name => @request_status.name }
    end

    assert_redirected_to request_status_path(assigns(:request_status))
  end

  test "should show request_status" do
    get :show, :id => @request_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @request_status
    assert_response :success
  end

  test "should update request_status" do
    put :update, :id => @request_status, :request_status => { :display_name => @request_status.display_name, :name => @request_status.name }
    assert_redirected_to request_status_path(assigns(:request_status))
  end

  test "should destroy request_status" do
    assert_difference('RequestStatus.count', -1) do
      delete :destroy, :id => @request_status
    end

    assert_redirected_to request_statuses_path
  end
end
