class ProductsResponder < ApplicationResponder
  topic :products_consumer

  def respond(product)
    respond_to :products_consumer, product.id
  end
end