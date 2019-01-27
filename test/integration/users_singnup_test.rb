require 'test_helper'

class UsersSingnupTest < ActionDispatch::IntegrationTest
  test 'invalid signup information' do
    get signup_path
    assert_select 'input[name="user[name]"]'
    assert_no_difference 'User.count' do
      post signup_path, params: { user: { name: '',
                                        email: 'user@invalid',
                                        password: 'foo',
                                        password_confirmation: 'bar' } }
    end
    assert_template 'users/new'
    assert_select 'div#error_explanation'
    assert_select 'div.alert'
    assert_select 'div.alert-danger'
    assert_select 'form[action="/signup"]'
    assert_select 'form[method="post"]'
    assert_select 'form.new_user'
  end

  test 'vakid signup information' do
    get signup_path
    assert_difference 'User.count' do
      post signup_path, params: { user: { name: 'Example User',
                                        email: 'user@example.com',
                                        password: 'foobar',
                                        password_confirmation: 'foobar' } }
    end
    follow_redirect!
    assert_template 'users/show'
    assert_select 'div.alert'
    assert_select 'div.alert-success'
    assert_not flash.empty?
  end
end
