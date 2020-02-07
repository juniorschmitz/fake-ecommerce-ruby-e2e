require_relative './sections/sections.rb'

class LoginPage < SitePrism::Page
  set_url 'http://automationpractice.com/index.php?controller=authentication&back=my-account'

  section  :header, Sections::Header, '#header'
  section  :login_form, Sections::LoginForm, '#login_form'
  section  :create_account_option, Sections::CreateAccountOption, '#create-account_form'
  element  :alert_danger, '.alert-danger', visible: :visible
  
  def login_with(email, password)
    login_form.input_email.set email
    login_form.input_password.set password
    login_form.btn_signin.click
  end

  def go_to_registration(email)
    create_account_option.input_email.set email
    create_account_option.btn_go_to_create_account.click
  end
end
