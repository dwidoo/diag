require 'test_helper'

class DiagnosticAmiantesControllerTest < ActionController::TestCase
  setup do
    @diagnostic_amiante = diagnostic_amiantes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagnostic_amiantes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagnostic_amiante" do
    assert_difference('DiagnosticAmiante.count') do
      post :create, diagnostic_amiante: { accompagnateur: @diagnostic_amiante.accompagnateur, commentaires: @diagnostic_amiante.commentaires, conclusions: @diagnostic_amiante.conclusions, docs: @diagnostic_amiante.docs }
    end

    assert_redirected_to diagnostic_amiante_path(assigns(:diagnostic_amiante))
  end

  test "should show diagnostic_amiante" do
    get :show, id: @diagnostic_amiante
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagnostic_amiante
    assert_response :success
  end

  test "should update diagnostic_amiante" do
    patch :update, id: @diagnostic_amiante, diagnostic_amiante: { accompagnateur: @diagnostic_amiante.accompagnateur, commentaires: @diagnostic_amiante.commentaires, conclusions: @diagnostic_amiante.conclusions, docs: @diagnostic_amiante.docs }
    assert_redirected_to diagnostic_amiante_path(assigns(:diagnostic_amiante))
  end

  test "should destroy diagnostic_amiante" do
    assert_difference('DiagnosticAmiante.count', -1) do
      delete :destroy, id: @diagnostic_amiante
    end

    assert_redirected_to diagnostic_amiantes_path
  end
end
