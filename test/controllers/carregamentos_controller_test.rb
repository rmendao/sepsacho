require 'test_helper'

class CarregamentosControllerTest < ActionController::TestCase
  setup do
    @carregamento = carregamentos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carregamentos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carregamento" do
    assert_difference('Carregamento.count') do
      post :create, carregamento: { data: @carregamento.data, farinha: @carregamento.farinha, quilograma: @carregamento.quilograma, silo_id: @carregamento.silo_id, user_silo_id: @carregamento.user_silo_id }
    end

    assert_redirected_to carregamento_path(assigns(:carregamento))
  end

  test "should show carregamento" do
    get :show, id: @carregamento
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carregamento
    assert_response :success
  end

  test "should update carregamento" do
    patch :update, id: @carregamento, carregamento: { data: @carregamento.data, farinha: @carregamento.farinha, quilograma: @carregamento.quilograma, silo_id: @carregamento.silo_id, user_silo_id: @carregamento.user_silo_id }
    assert_redirected_to carregamento_path(assigns(:carregamento))
  end

  test "should destroy carregamento" do
    assert_difference('Carregamento.count', -1) do
      delete :destroy, id: @carregamento
    end

    assert_redirected_to carregamentos_path
  end
end
