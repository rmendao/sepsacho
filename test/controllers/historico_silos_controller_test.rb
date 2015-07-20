require 'test_helper'

class HistoricoSilosControllerTest < ActionController::TestCase
  setup do
    @historico_silo = historico_silos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:historico_silos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create historico_silo" do
    assert_difference('HistoricoSilo.count') do
      post :create, historico_silo: { data: @historico_silo.data, quilograma: @historico_silo.quilograma, silo_id: @historico_silo.silo_id }
    end

    assert_redirected_to historico_silo_path(assigns(:historico_silo))
  end

  test "should show historico_silo" do
    get :show, id: @historico_silo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @historico_silo
    assert_response :success
  end

  test "should update historico_silo" do
    patch :update, id: @historico_silo, historico_silo: { data: @historico_silo.data, quilograma: @historico_silo.quilograma, silo_id: @historico_silo.silo_id }
    assert_redirected_to historico_silo_path(assigns(:historico_silo))
  end

  test "should destroy historico_silo" do
    assert_difference('HistoricoSilo.count', -1) do
      delete :destroy, id: @historico_silo
    end

    assert_redirected_to historico_silos_path
  end
end
