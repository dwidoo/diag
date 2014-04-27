require 'test_helper'

class ElementsControllerTest < ActionController::TestCase
  
  #before every test
  setup :initialize_element

  #after every test
  def teardown
    @element = nil
  end

  test "should show index of elements" do
    get :index, piece_id: 1 
    assert_response :success
  end

  test "should new element" do
    get :new, piece_id: 1
    assert_response :success
  end

  test "should create element" do
    post :create, element: {nom: "New element"}, piece_id: 1
    assert_response :success
  end

  test "should show element" do
    get :show, id: @element.id
    assert_response :success
  end

  test "should edit element" do
    get :edit, id: @element.id
    assert_response :success
  end

  test "should update element" do
    patch :update, id: @element.id, element: {:nom => "updated name"}
    assert_redirected_to element_path(assigns(:element))
  end

  test "should destroy element" do
    assert_difference( 'Element.count', -1 ) do 
      delete :destroy, id: @element.id
    end
   # assert_response :success
  end
  
  private 
    def initialize_element
      @element = elements(:one)
    end

end
