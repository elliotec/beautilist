require "test_helper"

feature "show a list" do
  scenario "click on list, show list item" do
    sign_in
    
    visit lists_path

    click_on "New list"
    fill_in "list_name", with: lists(:cr).name
    click_on "Create List"
    #save_and_open_page

    first("[class='glyphicon glyphicon-glass']").click
    #click_on "Edit"

    page.text.must_include "Code Rails"
  end
end