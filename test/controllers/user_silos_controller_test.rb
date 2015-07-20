require 'test_helper'

class UserSilosControllerTest < ActionController::TestCase
  setup do
    @user_silo = user_silos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_silos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_silo" do
    assert_difference('UserSilo.count') do
      post :create, user_silo: { contato: @user_silo.contato, empresa: @user_silo.empresa, nome: @user_silo.nome, rfid: @user_silo.rfid }
    end

    assert_redirected_to user_silo_path(assigns(:user_silo))
  end

  test "should show user_silo" do
    get :show, id: @user_silo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_silo
    assert_response :success
  end

  test "should update user_silo" do
    patch :update, id: @user_silo, user_silo: { contato: @user_silo.contato, empresa: @user_silo.empresa, nome: @user_silo.nome, rfid: @user_silo.rfid }
    assert_redirected_to user_silo_path(assigns(:user_silo))
  end

  test "should destroy user_silo" do
    assert_difference('UserSilo.count', -1) do
      delete :destroy, id: @user_silo
    end

    assert_redirected_to user_silos_path
  end
end
