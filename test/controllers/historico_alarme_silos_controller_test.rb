require 'test_helper'

class HistoricoAlarmeSilosControllerTest < ActionController::TestCase
  setup do
    @historico_alarme_silo = historico_alarme_silos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historico_alarme_silos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historico_alarme_silo" do
    assert_difference('HistoricoAlarmeSilo.count') do
      post :create, historico_alarme_silo: { alarme_silo_id: @historico_alarme_silo.alarme_silo_id, date: @historico_alarme_silo.date }
    end

    assert_redirected_to historico_alarme_silo_path(assigns(:historico_alarme_silo))
  end

  test "should show historico_alarme_silo" do
    get :show, id: @historico_alarme_silo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @historico_alarme_silo
    assert_response :success
  end

  test "should update historico_alarme_silo" do
    patch :update, id: @historico_alarme_silo, historico_alarme_silo: { alarme_silo_id: @historico_alarme_silo.alarme_silo_id, date: @historico_alarme_silo.date }
    assert_redirected_to historico_alarme_silo_path(assigns(:historico_alarme_silo))
  end

  test "should destroy historico_alarme_silo" do
    assert_difference('HistoricoAlarmeSilo.count', -1) do
      delete :destroy, id: @historico_alarme_silo
    end

    assert_redirected_to historico_alarme_silos_path
  end
end
