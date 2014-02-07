require "test_helper"

 feature "Deleting a list" do
#   scenario "submit form data to create a new list" do
#     sign_in
#     visit new_list_path
#     save_and_open_page
#     page.text.must_include lists(:cr).name
#   end
  scenario "list is deleted with a click" do
    sign_in
    visit lists_path
    click_on "New list"
    fill_in "list_name", with: lists(:cr).name
    click_on "Create List"

    title = lists(:cr).name
    #save_and_open_page
    first("[data-method='delete']").click
    page.wont_have_content title
  end
end
