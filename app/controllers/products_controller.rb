class ProductsController < ApplicationController
  def index
    @products = Product.all
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.js
      else
        format.js { head :no_content }
      end
    end

  end

  private
    def product_params
      params.require(:product).permit(:name,:price)
    end
end
