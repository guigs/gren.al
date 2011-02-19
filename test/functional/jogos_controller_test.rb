require 'test_helper'

class JogosControllerTest < ActionController::TestCase
  setup do
    @jogo = jogos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jogos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jogo" do
    assert_difference('Jogo.count') do
      post :create, :jogo => @jogo.attributes
    end

    assert_redirected_to jogo_path(assigns(:jogo))
  end

  test "should show jogo" do
    get :show, :id => @jogo.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @jogo.to_param
    assert_response :success
  end

  test "should update jogo" do
    put :update, :id => @jogo.to_param, :jogo => @jogo.attributes
    assert_redirected_to jogo_path(assigns(:jogo))
  end

  test "should destroy jogo" do
    assert_difference('Jogo.count', -1) do
      delete :destroy, :id => @jogo.to_param
    end

    assert_redirected_to jogos_path
  end
end
