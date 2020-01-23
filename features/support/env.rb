require 'selenium-webdriver'
require 'capybara'
require 'site_prism'
require 'pry'
require 'cucumber'

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.current_driver = :selenium_chrome
Capybara.default_max_wait_time = 10
