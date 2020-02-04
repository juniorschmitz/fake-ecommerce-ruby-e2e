module Sections
  class LoginForm < SitePrism::Section
    element  :input_email, '#email'
    element  :input_password, '#passwd'
    element  :btn_signin, '#SubmitLogin'
  end

  class CreateAccountOption < SitePrism::Section
    element  :input_email, '#email_create'
    element  :btn_go_to_create_account, '#SubmitCreate'
  end

  class Header < SitePrism::Section
    element  :signed_in_name, 'a.account'
    element  :input_search, '#search_query_top'
    element  :btn_search, '.button-search'

    def search(product)
      input_search.set product
      btn_search.click
    end
  end

  class Quickview < SitePrism::Section
    element  :btn_proceed_to_checkout, 'a[title="Proceed to checkout"]'
  end

  class Footer < SitePrism::Section

  end

  class Product < SitePrism::Section
    element  :quickview, '.quick-view'
    element  :btn_add_to_bag, '.ajax_add_to_cart_button'
    element  :image, 'img'
  end

  class RegistrationForm < SitePrism::Section
    element  :gender_male, '#id_gender1'
    element  :input_first_name, '#customer_firstname'
    element  :input_last_name, '#customer_lastname'
    element  :input_email, '#email'
    element  :input_password, '#passwd'
    element  :select_birth_day, 'select#days', visible: :false
    element  :select_birth_month, 'select#months', visible: :false
    element  :select_birth_year, 'select#years', visible: :false
    element  :input_first_name_address, '#firstname'
    element  :input_last_name_address, '#lastname'
    element  :input_company_address, '#company'
    element  :input_address_line1, '#address1'
    element  :input_address_line2, '#address2'
    element  :input_city, '#city'
    element  :select_state, '#id_state', visible: :false
    element  :input_postal_code, '#postcode'
    element  :select_country, '#id_country', visible: :false
    element  :input_additional_info, '#other'
    element  :input_home_phone, '#phone'
    element  :input_mobile_phone, '#phone_mobile'
    element  :input_address_alias, '#alias'
    element  :btn_register, '#submitAccount'
  end
end
