require 'test_helper'

class MissionsControllerTest < ActionController::TestCase
  setup do
    @mission = missions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:missions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mission" do
    assert_difference('Mission.count') do
      post :create, mission: { date_emission_rapport: @mission.date_emission_rapport, date_reperage: @mission.date_reperage, dateheure_visite: @mission.dateheure_visite, deadline_rapport: @mission.deadline_rapport, duree_reperage: @mission.duree_reperage, heure_reperage: @mission.heure_reperage, num_dossier: @mission.num_dossier, perimetre_reperage: @mission.perimetre_reperage, top_amiante: @mission.top_amiante }
    end

    assert_redirected_to mission_path(assigns(:mission))
  end

  test "should show mission" do
    get :show, id: @mission
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mission
    assert_response :success
  end

  test "should update mission" do
    patch :update, id: @mission, mission: { date_emission_rapport: @mission.date_emission_rapport, date_reperage: @mission.date_reperage, dateheure_visite: @mission.dateheure_visite, deadline_rapport: @mission.deadline_rapport, duree_reperage: @mission.duree_reperage, heure_reperage: @mission.heure_reperage, num_dossier: @mission.num_dossier, perimetre_reperage: @mission.perimetre_reperage, top_amiante: @mission.top_amiante }
    assert_redirected_to mission_path(assigns(:mission))
  end

  test "should destroy mission" do
    assert_difference('Mission.count', -1) do
      delete :destroy, id: @mission
    end

    assert_redirected_to missions_path
  end
end
