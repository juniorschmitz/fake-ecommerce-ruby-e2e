class ProductPage < SitePrism::Page
  set_url 'http://automationpractice.com/index.php?id_product=1&controller=product&search_query=shirt&results=1'

  elements :colors, '#color_to_pick_list li'
  element  :big_image, '#bigpic'
end