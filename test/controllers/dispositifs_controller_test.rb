require 'test_helper'

class DispositifsControllerTest < ActionController::TestCase
  setup do
    @dispositif = dispositifs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dispositifs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dispositif" do
    assert_difference('Dispositif.count') do
      post :create, dispositif: { name: @dispositif.name }
    end

    assert_redirected_to dispositif_path(assigns(:dispositif))
  end

  test "should show dispositif" do
    get :show, id: @dispositif
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dispositif
    assert_response :success
  end

  test "should update dispositif" do
    patch :update, id: @dispositif, dispositif: { name: @dispositif.name }
    assert_redirected_to dispositif_path(assigns(:dispositif))
  end

  test "should destroy dispositif" do
    assert_difference('Dispositif.count', -1) do
      delete :destroy, id: @dispositif
    end

    assert_redirected_to dispositifs_path
  end
end
