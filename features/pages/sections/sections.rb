module Sections
  class LoginForm < SitePrism::Section
    element  :input_email, '#email'
    element  :input_password, '#passwd'
    element  :btn_signin, '#SubmitLogin'
  end

  class CreateAccountOption < SitePrism::Section
    element  :input_email, '#email_create'
    element  :btn_go_to_create_account, '#create-account_form'
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

end