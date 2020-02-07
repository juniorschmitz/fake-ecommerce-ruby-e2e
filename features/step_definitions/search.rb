Given("i am on the home page") do
  @home_page = HomePage.new
  @home_page.load
end
  
Then("there should be some results") do
  @search_page = SearchPage.new
  expect(@search_page).to have_products
end

Then("there should not be product results") do
  @search_page = SearchPage.new
  expect(@search_page).not_to have_products
end