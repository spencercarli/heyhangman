require 'test_helper'

class HangmenControllerTest < ActionController::TestCase
  setup do
    @hangman = hangmen(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hangmen)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hangman" do
    assert_difference('Hangman.count') do
      post :create, hangman: { word: @hangman.word }
    end

    assert_redirected_to hangman_path(assigns(:hangman))
  end

  test "should show hangman" do
    get :show, id: @hangman
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hangman
    assert_response :success
  end

  test "should update hangman" do
    patch :update, id: @hangman, hangman: { word: @hangman.word }
    assert_redirected_to hangman_path(assigns(:hangman))
  end

  test "should destroy hangman" do
    assert_difference('Hangman.count', -1) do
      delete :destroy, id: @hangman
    end

    assert_redirected_to hangmen_path
  end
end
