@full_regression
@login
Feature: Login on the Fake Ecommerce
  I would like to be able to login on the application
  As a common user
  So I can navigate and buy stuff

Scenario: Login Successfuly
  Given i access the login page
  And login with email "potato@teste.com" and password "abc123"
  Then i should be logged in successfully

Scenario: Invalid Login
  Given i access the login page
  And login with email "potato@teste.com" and password "abc1234"
  Then the login should fail
