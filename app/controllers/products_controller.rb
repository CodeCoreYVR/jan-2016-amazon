class ProductsController < ApplicationController

  def new
    @product = Product.new
  end

  def create
    product_params = params.require(:product).permit(:name, :description, :price)
    @product = Product.new product_params
    if @product.save
      render text: "created!"
    else
      render :new
    end
  end
end
