require "test_helper"

feature "can access home" do
  scenario "has content" do
    visit root_path  
    assert page.has_content?("Beautilist")
  end
end
