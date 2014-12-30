require 'test_helper'

class ShasumsControllerTest < ActionController::TestCase
  setup do
    @shasum = shasums(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:shasums)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create shasum" do
    assert_difference('Shasum.count') do
      post :create, shasum: { sum: @shasum.sum }
    end

    assert_redirected_to shasum_path(assigns(:shasum))
  end

  test "should show shasum" do
    get :show, id: @shasum
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @shasum
    assert_response :success
  end

  test "should update shasum" do
    patch :update, id: @shasum, shasum: { sum: @shasum.sum }
    assert_redirected_to shasum_path(assigns(:shasum))
  end

  test "should destroy shasum" do
    assert_difference('Shasum.count', -1) do
      delete :destroy, id: @shasum
    end

    assert_redirected_to shasums_path
  end
end
