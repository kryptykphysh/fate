require 'test_helper'

class CharactersControllerTest < ActionController::TestCase
  setup do
    @character = characters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:characters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create character" do
    assert_difference('Character.count') do
      post :create, character: { character_idea: @character.character_idea, description: @character.description, mental_stress: @character.mental_stress, name: @character.name, phase_trio_one: @character.phase_trio_one, phase_trio_three: @character.phase_trio_three, phase_trio_two: @character.phase_trio_two, physical_stress: @character.physical_stress, refresh: @character.refresh, story_id: @character.story_id }
    end

    assert_redirected_to character_path(assigns(:character))
  end

  test "should show character" do
    get :show, id: @character
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @character
    assert_response :success
  end

  test "should update character" do
    put :update, id: @character, character: { character_idea: @character.character_idea, description: @character.description, mental_stress: @character.mental_stress, name: @character.name, phase_trio_one: @character.phase_trio_one, phase_trio_three: @character.phase_trio_three, phase_trio_two: @character.phase_trio_two, physical_stress: @character.physical_stress, refresh: @character.refresh, story_id: @character.story_id }
    assert_redirected_to character_path(assigns(:character))
  end

  test "should destroy character" do
    assert_difference('Character.count', -1) do
      delete :destroy, id: @character
    end

    assert_redirected_to characters_path
  end
end
