require_relative './sections/sections.rb'

class HomePage < SitePrism::Page
  set_url 'http://automationpractice.com/index.php'

  section  :header, Sections::Header, '#header'
end
