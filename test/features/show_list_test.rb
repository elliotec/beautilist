require "test_helper"

feature "show a list" do
  scenario "click on list, show list item" do
    sign_in
    
    visit lists_path

    create_fixture

    first("[class='glyphicon glyphicon-glass']").click

    page.text.must_include "Code Rails"
  end
end