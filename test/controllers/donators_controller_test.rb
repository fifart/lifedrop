require 'test_helper'

class DonatorsControllerTest < ActionController::TestCase
  setup do
    @donator = donators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:donators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create donator" do
    assert_difference('Donator.count') do
      post :create, donator: { blood_type: @donator.blood_type, email: @donator.email, name: @donator.name }
    end

    assert_redirected_to donator_path(assigns(:donator))
  end

  test "should show donator" do
    get :show, id: @donator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @donator
    assert_response :success
  end

  test "should update donator" do
    patch :update, id: @donator, donator: { blood_type: @donator.blood_type, email: @donator.email, name: @donator.name }
    assert_redirected_to donator_path(assigns(:donator))
  end

  test "should destroy donator" do
    assert_difference('Donator.count', -1) do
      delete :destroy, id: @donator
    end

    assert_redirected_to donators_path
  end
end
