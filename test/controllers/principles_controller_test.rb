require 'test_helper'

class PrinciplesControllerTest < ActionController::TestCase
  setup do
    @principle = principles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:principles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create principle" do
    assert_difference('Principle.count') do
      post :create, principle: { name: @principle.name }
    end

    assert_redirected_to principle_path(assigns(:principle))
  end

  test "should show principle" do
    get :show, id: @principle
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @principle
    assert_response :success
  end

  test "should update principle" do
    patch :update, id: @principle, principle: { name: @principle.name }
    assert_redirected_to principle_path(assigns(:principle))
  end

  test "should destroy principle" do
    assert_difference('Principle.count', -1) do
      delete :destroy, id: @principle
    end

    assert_redirected_to principles_path
  end
end
