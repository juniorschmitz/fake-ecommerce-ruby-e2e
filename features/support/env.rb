require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'site_prism'
require 'pry'
require 'cucumber'
require 'rspec'
require 'faker'

# Capybara.configure do |config|
#   config.default_driver = :selenium_chrome
# end

# TARGET_RESOLUTION = [1280,1024]
# CHROME_SWITCHES = %W(--window-size=#{TARGET_RESOLUTION[0]},#{TARGET_RESOLUTION[1]} --disable-translate --headless)
CHROME_SWITCHES = %W(--disable-translate --headless)
CHROME_OPTIONS = {
  'args' => CHROME_SWITCHES
}

Capybara.register_driver :remote_chrome do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(:chromeOptions => CHROME_OPTIONS)
  opts   = {
    :browser     => :remote,
    # :url         => 'http://192.168.99.100:4444/wd/hub',
    # :url         => 'http://ec2-18-216-221-197.us-east-2.compute.amazonaws.com:4444/wd/hub',
    :url         => 'http://ec2-3-136-155-68.us-east-2.compute.amazonaws.com:4444/wd/hub',
    :desired_capabilities => caps
  }
  Capybara::Selenium::Driver.new(app, opts)
end

Capybara.configure do |config|
  config.default_driver         = :remote_chrome
  config.javascript_driver      = :remote_chrome
end

Capybara.default_max_wait_time = 10
