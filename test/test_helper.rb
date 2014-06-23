ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require "rails/test_help"
require "minitest/rails/capybara"
require "turn"
require "simplecov"
SimpleCov.start 'rails'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
  fixtures :all

  def sign_in
    visit new_user_session_path
    fill_in "Email", with: users(:us).email
    fill_in "Password", with: "password1"
    page.find("[type='submit']").click  
  end
  def create_fixture
    visit lists_path
    click_on "New list"
    fill_in "list_name", with: lists(:cr).name
    click_on "Create List"
  end
end
