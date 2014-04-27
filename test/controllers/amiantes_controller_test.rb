require 'test_helper'

class AmiantesControllerTest < ActionController::TestCase
  setup do
    @amiante = amiantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:amiantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create amiante" do
    assert_difference('Amiante.count') do
      post :create, amiante: { commentaires: @amiante.commentaires, composant: @amiante.composant, conclusion: @amiante.conclusion, description: @amiante.description, identifiant: @amiante.identifiant, partie_a_sonder: @amiante.partie_a_sonder }
    end

    assert_redirected_to amiante_path(assigns(:amiante))
  end

  test "should show amiante" do
    get :show, id: @amiante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @amiante
    assert_response :success
  end

  test "should update amiante" do
    patch :update, id: @amiante, amiante: { commentaires: @amiante.commentaires, composant: @amiante.composant, conclusion: @amiante.conclusion, description: @amiante.description, identifiant: @amiante.identifiant, partie_a_sonder: @amiante.partie_a_sonder }
    assert_redirected_to amiante_path(assigns(:amiante))
  end

  test "should destroy amiante" do
    assert_difference('Amiante.count', -1) do
      delete :destroy, id: @amiante
    end

    assert_redirected_to amiantes_path
  end
end
