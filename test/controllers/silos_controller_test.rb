require 'test_helper'

class SilosControllerTest < ActionController::TestCase
  setup do
    @silo = silos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:silos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create silo" do
    assert_difference('Silo.count') do
      post :create, silo: { capacidade: @silo.capacidade, exploracao_id: @silo.exploracao_id, tipo: @silo.tipo }
    end

    assert_redirected_to silo_path(assigns(:silo))
  end

  test "should show silo" do
    get :show, id: @silo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @silo
    assert_response :success
  end

  test "should update silo" do
    patch :update, id: @silo, silo: { capacidade: @silo.capacidade, exploracao_id: @silo.exploracao_id, tipo: @silo.tipo }
    assert_redirected_to silo_path(assigns(:silo))
  end

  test "should destroy silo" do
    assert_difference('Silo.count', -1) do
      delete :destroy, id: @silo
    end

    assert_redirected_to silos_path
  end
end
