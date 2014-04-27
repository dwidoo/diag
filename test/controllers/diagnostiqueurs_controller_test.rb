require 'test_helper'

class DiagnostiqueursControllerTest < ActionController::TestCase
  setup do
    @diagnostiqueur = diagnostiqueurs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diagnostiqueurs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diagnostiqueur" do
    assert_difference('Diagnostiqueur.count') do
      post :create, diagnostiqueur: { adresse: @diagnostiqueur.adresse, code_postal: @diagnostiqueur.code_postal, coordonnees_assureur: @diagnostiqueur.coordonnees_assureur, email: @diagnostiqueur.email, nom: @diagnostiqueur.nom, nom_assureur: @diagnostiqueur.nom_assureur, num_assurance: @diagnostiqueur.num_assurance, num_certif: @diagnostiqueur.num_certif, num_tva: @diagnostiqueur.num_tva, obtention_certif: @diagnostiqueur.obtention_certif, prenom: @diagnostiqueur.prenom, raison_sociale: @diagnostiqueur.raison_sociale, siret: @diagnostiqueur.siret, tel: @diagnostiqueur.tel, validite_assurance: @diagnostiqueur.validite_assurance, validite_certif: @diagnostiqueur.validite_certif }
    end

    assert_redirected_to diagnostiqueur_path(assigns(:diagnostiqueur))
  end

  test "should show diagnostiqueur" do
    get :show, id: @diagnostiqueur
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diagnostiqueur
    assert_response :success
  end

  test "should update diagnostiqueur" do
    patch :update, id: @diagnostiqueur, diagnostiqueur: { adresse: @diagnostiqueur.adresse, code_postal: @diagnostiqueur.code_postal, coordonnees_assureur: @diagnostiqueur.coordonnees_assureur, email: @diagnostiqueur.email, nom: @diagnostiqueur.nom, nom_assureur: @diagnostiqueur.nom_assureur, num_assurance: @diagnostiqueur.num_assurance, num_certif: @diagnostiqueur.num_certif, num_tva: @diagnostiqueur.num_tva, obtention_certif: @diagnostiqueur.obtention_certif, prenom: @diagnostiqueur.prenom, raison_sociale: @diagnostiqueur.raison_sociale, siret: @diagnostiqueur.siret, tel: @diagnostiqueur.tel, validite_assurance: @diagnostiqueur.validite_assurance, validite_certif: @diagnostiqueur.validite_certif }
    assert_redirected_to diagnostiqueur_path(assigns(:diagnostiqueur))
  end

  test "should destroy diagnostiqueur" do
    assert_difference('Diagnostiqueur.count', -1) do
      delete :destroy, id: @diagnostiqueur
    end

    assert_redirected_to diagnostiqueurs_path
  end
end
