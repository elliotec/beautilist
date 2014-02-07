require "test_helper"

feature "Check for header" do
  scenario "check if header is loaded" do
    visit root_path
    page.source.must_include "application.css"
    page.body.must_include "navbar"
  end
end
