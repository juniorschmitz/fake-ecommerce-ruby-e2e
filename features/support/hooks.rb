Before do
  Capybara.page.driver.browser.manage.window.maximize
end

After do |scenario|
  screenshot = Capybara.page.save_screenshot("log/screenshots/#{scenario.__id__}.png")
  embed(screenshot, "image/png", "Screenshot")
  Capybara.current_session.driver.quit 
end
