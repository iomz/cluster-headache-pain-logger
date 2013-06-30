require 'test_helper'

class DosingsControllerTest < ActionController::TestCase
  setup do
    @dosing = dosings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dosings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dosing" do
    assert_difference('Dosing.count') do
      post :create, dosing: { attack_id: @dosing.attack_id, dosed_at: @dosing.dosed_at, drug_id: @dosing.drug_id }
    end

    assert_redirected_to dosing_path(assigns(:dosing))
  end

  test "should show dosing" do
    get :show, id: @dosing
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dosing
    assert_response :success
  end

  test "should update dosing" do
    patch :update, id: @dosing, dosing: { attack_id: @dosing.attack_id, dosed_at: @dosing.dosed_at, drug_id: @dosing.drug_id }
    assert_redirected_to dosing_path(assigns(:dosing))
  end

  test "should destroy dosing" do
    assert_difference('Dosing.count', -1) do
      delete :destroy, id: @dosing
    end

    assert_redirected_to dosings_path
  end
end
