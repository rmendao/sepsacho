require 'test_helper'

class HistoricoAlarmesControllerTest < ActionController::TestCase
  setup do
    @historico_alarme = historico_alarmes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historico_alarmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historico_alarme" do
    assert_difference('HistoricoAlarme.count') do
      post :create, historico_alarme: {  }
    end

    assert_redirected_to historico_alarme_path(assigns(:historico_alarme))
  end

  test "should show historico_alarme" do
    get :show, id: @historico_alarme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @historico_alarme
    assert_response :success
  end

  test "should update historico_alarme" do
    patch :update, id: @historico_alarme, historico_alarme: {  }
    assert_redirected_to historico_alarme_path(assigns(:historico_alarme))
  end

  test "should destroy historico_alarme" do
    assert_difference('HistoricoAlarme.count', -1) do
      delete :destroy, id: @historico_alarme
    end

    assert_redirected_to historico_alarmes_path
  end
end
