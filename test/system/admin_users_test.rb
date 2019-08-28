require "application_system_test_case"

class AdminUsersTest < ApplicationSystemTestCase
  # test "visiting the index" do
  #   visit admin_users_url
  #
  #   assert_selector "h1", text: "AdminUser"
  # end

  test "creating a New Admin" do
    visit admin_user_session_url

    fill_in "admin_user_email", with: 'admin@example.com'
    fill_in "admin_user_password", with: 'password'

    click_on "Login"


  end

  end
