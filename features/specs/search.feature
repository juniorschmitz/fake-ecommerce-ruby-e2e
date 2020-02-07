@full_regression
@search
Feature: Products Search
  I would like to be able to search for products
  As a user
  So I can buy stuff after

Scenario: Search for valid product
  Given i am on the home page
  When i search for the product "shirt"
  Then there should be some results

Scenario: Search for inexistent product
  Given i am on the home page
  When i search for the product "camiseta"
  Then there should not be product results
