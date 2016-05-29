require 'test_helper'

class DjrmastersControllerTest < ActionController::TestCase
  setup do
    @djrmaster = djrmasters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:djrmasters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create djrmaster" do
    assert_difference('Djrmaster.count') do
      post :create, djrmaster: { accdelay: @djrmaster.accdelay, djrdate: @djrmaster.djrdate, foreman: @djrmaster.foreman, jobphase: @djrmaster.jobphase, projname: @djrmaster.projname, sectname: @djrmaster.sectname, subdate: @djrmaster.subdate, subform: @djrmaster.subform, subformver: @djrmaster.subformver, subnum: @djrmaster.subnum, weather: @djrmaster.weather, workschednextday: @djrmaster.workschednextday, worktoday: @djrmaster.worktoday }
    end

    assert_redirected_to djrmaster_path(assigns(:djrmaster))
  end

  test "should show djrmaster" do
    get :show, id: @djrmaster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @djrmaster
    assert_response :success
  end

  test "should update djrmaster" do
    patch :update, id: @djrmaster, djrmaster: { accdelay: @djrmaster.accdelay, djrdate: @djrmaster.djrdate, foreman: @djrmaster.foreman, jobphase: @djrmaster.jobphase, projname: @djrmaster.projname, sectname: @djrmaster.sectname, subdate: @djrmaster.subdate, subform: @djrmaster.subform, subformver: @djrmaster.subformver, subnum: @djrmaster.subnum, weather: @djrmaster.weather, workschednextday: @djrmaster.workschednextday, worktoday: @djrmaster.worktoday }
    assert_redirected_to djrmaster_path(assigns(:djrmaster))
  end

  test "should destroy djrmaster" do
    assert_difference('Djrmaster.count', -1) do
      delete :destroy, id: @djrmaster
    end

    assert_redirected_to djrmasters_path
  end
end
