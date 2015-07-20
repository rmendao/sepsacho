require 'test_helper'

class ExploracaosControllerTest < ActionController::TestCase
  setup do
    @exploracao = exploracaos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exploracaos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exploracao" do
    assert_difference('Exploracao.count') do
      post :create, exploracao: { localizacao: @exploracao.localizacao, nome: @exploracao.nome, tipo: @exploracao.tipo }
    end

    assert_redirected_to exploracao_path(assigns(:exploracao))
  end

  test "should show exploracao" do
    get :show, id: @exploracao
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exploracao
    assert_response :success
  end

  test "should update exploracao" do
    patch :update, id: @exploracao, exploracao: { localizacao: @exploracao.localizacao, nome: @exploracao.nome, tipo: @exploracao.tipo }
    assert_redirected_to exploracao_path(assigns(:exploracao))
  end

  test "should destroy exploracao" do
    assert_difference('Exploracao.count', -1) do
      delete :destroy, id: @exploracao
    end

    assert_redirected_to exploracaos_path
  end
end
