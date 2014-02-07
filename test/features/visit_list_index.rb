require "test_helper"

feature "visiting the list index" do
  scenario "with or without lists" do
    sign_in
    visit lists_path

    page.text.must_include('Complete')
  end
end
