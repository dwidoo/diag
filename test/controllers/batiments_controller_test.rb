require 'test_helper'

class BatimentsControllerTest < ActionController::TestCase
  #before every test
  setup :initialize_batiment

  #after every test
  def teardown
    @batiment = nil
  end

  test "should show index of batiments" do
    get :index 
    assert_response :success
  end

  test "should new batiment" do
    get :new
    assert_response :success
  end

  test "should create batiment" do
    assert_difference('Batiment.count') do
      post :create, batiment: {adresse: "adresse test",designation: "designation test", code_postal: "75000", commune: "Paris"}
    end
    #assert_response :success
    assert_redirected_to assigns(:batiment)
  end

  test "should show batiment" do
    get :show, id: @batiment.id
    assert_response :success
  end

  test "should edit batiment" do
    get :edit, id: @batiment.id
    assert_response :success
  end

  test "should update batiment" do
    patch :update, id: @batiment.id, batiment: {adresse: "adresse test",designation: "designation test", code_postal: "75000", commune: "Paris"}
    assert_redirected_to @batiment
  end

  test "should destroy batiment" do
    assert_difference( 'Batiment.count', -1 ) do 
      delete :destroy, id: @batiment.id
    end
   # assert_response :success
  end
  
  private 
    def initialize_batiment
      @batiment = batiments(:one)
    end
end
