require 'test_helper'

class SignupUserTest < ActionDispatch::IntegrationTest

  def setup
    @user = User.new(username: "john", email: "john@example.com", password: "password", admin: true)
  end

  test 'new user should be able to sign up' do
    assert_difference 'User.count', 1 do
      sign_up_as(@user)
      follow_redirect!
    end
    assert_template 'users/show'
    assert_match @user.username, response.body
  end

end
