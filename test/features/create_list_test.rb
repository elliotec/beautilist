require "test_helper"

feature "Creating a list" do
  scenario "submit form data to create a new list" do
    sign_in
    visit new_list_path
    #save_and_open_page
    fill_in "list_name", with: lists(:cr).name
    click_on "Create List"
    page.text.must_include lists(:cr).name
  end
end
