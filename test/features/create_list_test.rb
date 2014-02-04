require "test_helper"

feature "Creating a list" do
  scenario "submit form data to create a new list" do
    visit new_list_path
    fill_in "list", with: lists(:cr).list
    fill_in "step", with: lists(:cr).step
    click_on "Create List"
    page.text.must_include lists(:cr).list
  end
end
