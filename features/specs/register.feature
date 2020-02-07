@full_regression
@register
Feature: Registration on the Fake Ecommerce
  I would like to be able to register on the application
  As a common user
  So I can navigate and buy stuff

Scenario: Registration successfuly
  Given i access the login page
  When i select the registration option
  And register with valid data
  Then i should be logged in successfully
