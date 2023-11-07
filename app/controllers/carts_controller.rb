class CartsController < ApplicationController
  def show
    @cart = Cart.find(session[:cart_id])
  end

  def add_to_cart
    product = Product.find(params[:product_id])
    @cart = current_cart
    @cart.add_product(product)
    session[:cart_id] = @cart.id
    redirect_to products_path, notice: '商品がカートに追加されました'
  end
end

