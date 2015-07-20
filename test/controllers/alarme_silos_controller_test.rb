require 'test_helper'

class AlarmeSilosControllerTest < ActionController::TestCase
  setup do
    @alarme_silo = alarme_silos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alarme_silos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alarme_silo" do
    assert_difference('AlarmeSilo.count') do
      post :create, alarme_silo: { alarme_id: @alarme_silo.alarme_id, silo_id: @alarme_silo.silo_id, tipo: @alarme_silo.tipo }
    end

    assert_redirected_to alarme_silo_path(assigns(:alarme_silo))
  end

  test "should show alarme_silo" do
    get :show, id: @alarme_silo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alarme_silo
    assert_response :success
  end

  test "should update alarme_silo" do
    patch :update, id: @alarme_silo, alarme_silo: { alarme_id: @alarme_silo.alarme_id, silo_id: @alarme_silo.silo_id, tipo: @alarme_silo.tipo }
    assert_redirected_to alarme_silo_path(assigns(:alarme_silo))
  end

  test "should destroy alarme_silo" do
    assert_difference('AlarmeSilo.count', -1) do
      delete :destroy, id: @alarme_silo
    end

    assert_redirected_to alarme_silos_path
  end
end
