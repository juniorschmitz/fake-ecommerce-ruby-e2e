Given("i am logged in with email {string} and password {string}") do |email, password|
  steps %{
    Given i access the login page
    When login with email "#{email}" and password "#{password}"
    Then i should be logged in successfully
  }
end

When("i search for the product {string}") do |product|
  @home_page = HomePage.new
  @home_page.header.search product
end

When("add the product to my bag") do
  @search_page = SearchPage.new
  @search_page.add_product_to_bag 0
end

When("select the address and delivery method") do
  @checkout_page = CheckoutPage.new
  @checkout_page.advance_steps
end

When("finalize the checkout with payment by check") do
  @checkout_page.finalize_with_check
end

Then("the order should be placed successfully") do
  @checkout_result_page = CheckoutResultPage.new
  @checkout_result_page.wait_until_alert_success_visible
  expect(@checkout_result_page).to have_alert_success
  expect(@checkout_result_page.alert_success.text.downcase).to include 'your order on my store is complete'
end
