require_relative './sections/sections.rb'

class LoginPage < SitePrism::Page
  set_url 'http://automationpractice.com/index.php?controller=authentication&back=my-account'

  section  :header, Sections::Header, '#header'
  section  :login_form, Sections::LoginForm, '#login_form'
  section  :create_account_option, Sections::CreateAccountOption, '#create-account_form'
  
  def login_with(email, password)
    login_form.input_email.set email
    login_form.input_password.set password
    login_form.btn_signin.click
  end
end
