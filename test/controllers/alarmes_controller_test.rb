require 'test_helper'

class AlarmesControllerTest < ActionController::TestCase
  setup do
    @alarme = alarmes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:alarmes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create alarme" do
    assert_difference('Alarme.count') do
      post :create, alarme: { acao: @alarme.acao, limite: @alarme.limite, tipo: @alarme.tipo }
    end

    assert_redirected_to alarme_path(assigns(:alarme))
  end

  test "should show alarme" do
    get :show, id: @alarme
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @alarme
    assert_response :success
  end

  test "should update alarme" do
    patch :update, id: @alarme, alarme: { acao: @alarme.acao, limite: @alarme.limite, tipo: @alarme.tipo }
    assert_redirected_to alarme_path(assigns(:alarme))
  end

  test "should destroy alarme" do
    assert_difference('Alarme.count', -1) do
      delete :destroy, id: @alarme
    end

    assert_redirected_to alarmes_path
  end
end
