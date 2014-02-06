require "test_helper"

feature "Creating a list" do
  scenario "submit form data to create a new list" do
    visit new_list_path
    fill_in "Name", with: lists(:cr).name
    #fill_in "Item: ", with: lists(:cr).name
    click_on "Create List"
    page.text.must_include lists(:cr).name
  end
end
