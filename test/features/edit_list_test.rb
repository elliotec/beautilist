require "test_helper"

feature "editing a list" do
  scenario "submit updates to an existing list" do
    sign_in
    
    create_fixture
    #save_and_open_page

    first("[class='glyphicon glyphicon-pencil']").click
    #click_on "Edit"

    fill_in "list_name", with: "Becoming a Web Developer"
    click_on "Update List"

    page.text.must_include "Web Developer"
  end
end
