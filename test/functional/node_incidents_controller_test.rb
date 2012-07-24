require 'test_helper'

class NodeIncidentsControllerTest < ActionController::TestCase
  setup do
    @node_incident = node_incidents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:node_incidents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create node_incident" do
    assert_difference('NodeIncident.count') do
      post :create, :node_incident => { :action => @node_incident.action, :description => @node_incident.description }
    end

    assert_redirected_to node_incident_path(assigns(:node_incident))
  end

  test "should show node_incident" do
    get :show, :id => @node_incident
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @node_incident
    assert_response :success
  end

  test "should update node_incident" do
    put :update, :id => @node_incident, :node_incident => { :action => @node_incident.action, :description => @node_incident.description }
    assert_redirected_to node_incident_path(assigns(:node_incident))
  end

  test "should destroy node_incident" do
    assert_difference('NodeIncident.count', -1) do
      delete :destroy, :id => @node_incident
    end

    assert_redirected_to node_incidents_path
  end
end
