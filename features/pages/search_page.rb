require_relative './sections/sections.rb'

class SearchPage < SitePrism::Page
  sections :products, Sections::Product, '.ajax_block_product'
  section  :quickview, Sections::Quickview, '#layer_cart'

  def add_product_to_bag(product_index)
    products[product_index].image.hover
    products[product_index].btn_add_to_bag.click
    quickview.btn_proceed_to_checkout.click
  end
end