require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'site_prism'
require 'pry'
require 'cucumber'
require 'rspec'

Capybara.configure do |config|
  config.default_driver = :selenium_chrome
end

Capybara.default_max_wait_time = 10
