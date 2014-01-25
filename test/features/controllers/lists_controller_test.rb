require 'test_helper'

feature "test if the list controller can CRUD properly" do
  scenario 'setup' do
    @list = lists(:one)
  end

  scenario "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lists)
  end

  scenario "should get new" do
    get :new
    assert_response :success
  end

  scenario "should create list" do
    assert_difference('List.count') do
      post :create, list: { name: @list.name }
    end

    assert_redirected_to list_path(assigns(:list))
  end

  scenario "should show list" do
    get :show, id: @list
    assert_response :success
  end

  scenario "should get edit" do
    get :edit, id: @list
    assert_response :success
  end

  scenario "should update list" do
    patch :update, id: @list, list: { name: @list.name }
    assert_redirected_to list_path(assigns(:list))
  end

  scenario "should destroy list" do
    assert_difference('List.count', -1) do
      delete :destroy, id: @list
    end

    assert_redirected_to lists_path
  end
end
