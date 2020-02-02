class CheckoutPage < SitePrism::Page
  element  :btn_proceed_to_checkout, 'a[title^="Proceed"]', visible: :visible
  element  :btn_process_address, 'button[name="processAddress"]'
  element  :btn_process_carrier, 'button[name="processCarrier"]'
  element  :agree_to_terms, '.checker'
  element  :payment_check_option, 'a.cheque'
  element  :btn_confirm_order, '#cart_navigation button[type="submit"]'

  def advance_steps
    btn_proceed_to_checkout.click
    btn_process_address.click
    agree_to_terms.click
    btn_process_carrier.click
  end

  def finalize_with_check
    payment_check_option.click
    btn_confirm_order.click
  end
end