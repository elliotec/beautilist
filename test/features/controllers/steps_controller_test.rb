require 'test_helper'

feature 'Check if steps CRUD properly' do
  scenario 'setup' do
    @step = steps(:one)
  end

  scenario "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:steps)
  end

  scenario "should get new" do
    get :new
    assert_response :success
  end

  scenario "should create step" do
    assert_difference('Step.count') do
      post :create, step: { number: @step.number, text: @step.text }
    end

    assert_redirected_to step_path(assigns(:step))
  end

  scenario "should show step" do
    get :show, id: @step
    assert_response :success
  end

  scenario "should get edit" do
    get :edit, id: @step
    assert_response :success
  end

  scenario "should update step" do
    patch :update, id: @step, step: { number: @step.number, text: @step.text }
    assert_redirected_to step_path(assigns(:step))
  end

  scenario "should destroy step" do
    assert_difference('Step.count', -1) do
      delete :destroy, id: @step
    end

    assert_redirected_to steps_path
  end
end
