class RegistrationPage < SitePrism::Page
  
  section  :registration_form, Sections::RegistrationForm, '#account-creation_form'

  def register_random_user(email)
    name = Faker::Name.name
    registration_form.gender_male.click
    registration_form.input_first_name.set name
    registration_form.input_last_name.set 'Test'
    registration_form.input_email.set email
    registration_form.input_password.set 'abc123'
    registration_form.select_birth_day.select '10'
    registration_form.select_birth_month.select 'December'
    registration_form.select_birth_year.select '1995'
    registration_form.input_first_name_address.set name
    registration_form.input_last_name_address.set 'Test'
    registration_form.input_company_address.set 'Test'
    registration_form.input_address_line1.set 'Test address 1'
    registration_form.input_address_line2.set 'Test address 2'
    registration_form.input_city.set 'Test City'
    registration_form.select_state.select 'Alabama'
    registration_form.input_postal_code.set '55555'
    registration_form.select_country.set 'United States'
    registration_form.input_additional_info.set Faker::Lorem.sentence(word_count: 8)
    registration_form.input_home_phone.set '5555555555'
    registration_form.input_mobile_phone.set '555555555'
    registration_form.input_address_alias.set 'Test Address'
    registration_form.btn_register.click
  end
end