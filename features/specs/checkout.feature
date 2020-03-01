@full_regression
@checkout
Feature: Checkout flows on the Fake Ecommerce
  As a site administrator
  I would like to have a checkout flow delivered
  So the Ecommerce users could buy clothes

Scenario: Common Checkout Flow
  Given i am logged in with email "potato@teste.com" and password "abc123"
  When i search for the product "shirt"
  And add the product to my bag
  And select the address and delivery method
  And finalize the checkout with payment by check
  Then the order should be placed successfully
