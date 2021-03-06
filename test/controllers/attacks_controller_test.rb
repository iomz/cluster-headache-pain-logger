require 'test_helper'

class AttacksControllerTest < ActionController::TestCase
  setup do
    @attack = attacks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:attacks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create attack" do
    assert_difference('Attack.count') do
      post :create, attack: { comment: @attack.comment, ended_at: @attack.ended_at, pain_level: @attack.pain_level, started_at: @attack.started_at, user_id: @attack.user_id }
    end

    assert_redirected_to attack_path(assigns(:attack))
  end

  test "should show attack" do
    get :show, id: @attack
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @attack
    assert_response :success
  end

  test "should update attack" do
    patch :update, id: @attack, attack: { comment: @attack.comment, ended_at: @attack.ended_at, pain_level: @attack.pain_level, started_at: @attack.started_at, user_id: @attack.user_id }
    assert_redirected_to attack_path(assigns(:attack))
  end

  test "should destroy attack" do
    assert_difference('Attack.count', -1) do
      delete :destroy, id: @attack
    end

    assert_redirected_to attacks_path
  end
end
