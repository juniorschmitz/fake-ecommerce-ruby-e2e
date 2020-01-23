Given("I am on Google Page") do
  visit('https://www.google.com')
end
  
Then("I should see the Google Logo") do
  sleep 10
end