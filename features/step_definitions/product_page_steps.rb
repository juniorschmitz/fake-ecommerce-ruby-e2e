Given("i am on a product page") do
  @product_page = ProductPage.new
  @product_page.load
end

When("i change one color attribute") do
  @img_bfr = @product_page.big_image[:src]
  @product_page.colors.last.click
  sleep 2
end

Then("the display image should change") do
  @img_aftr = @product_page.big_image[:src]
  expect(@img_bfr).not_to eql @img_aftr
end
