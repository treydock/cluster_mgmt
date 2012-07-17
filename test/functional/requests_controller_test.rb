require 'test_helper'

class RequestsControllerTest < ActionController::TestCase
  setup do
    @request = requests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:requests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create request" do
    assert_difference('Request.count') do
      post :create, :request => { :affiliation_id => @request.affiliation_id, :class_id => @request.class_id, :department_id => @request.department_id, :description => @request.description, :email => @request.email, :expires => @request.expires, :firstname => @request.firstname, :gid => @request.gid, :lastname => @request.lastname, :node_hours => @request.node_hours, :phone => @request.phone, :request_status_id => @request.request_status_id, :uid => @request.uid }
    end

    assert_redirected_to request_path(assigns(:request))
  end

  test "should show request" do
    get :show, :id => @request
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @request
    assert_response :success
  end

  test "should update request" do
    put :update, :id => @request, :request => { :affiliation_id => @request.affiliation_id, :class_id => @request.class_id, :department_id => @request.department_id, :description => @request.description, :email => @request.email, :expires => @request.expires, :firstname => @request.firstname, :gid => @request.gid, :lastname => @request.lastname, :node_hours => @request.node_hours, :phone => @request.phone, :request_status_id => @request.request_status_id, :uid => @request.uid }
    assert_redirected_to request_path(assigns(:request))
  end

  test "should destroy request" do
    assert_difference('Request.count', -1) do
      delete :destroy, :id => @request
    end

    assert_redirected_to requests_path
  end
end
