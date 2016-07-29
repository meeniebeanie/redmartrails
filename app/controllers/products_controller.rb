class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(permitted_product_params)
      if @product.save
        flash[:success] = 'Product was successfully created.'
        format.html { redirect_to @product }
      else
        format.html {render :new}
      end

  end

  def show
    @product = Product.find(params[:id])
  end

private

  def permitted_product_params
    params.require(:product).permit(:name, :price, :category, :product_id)
  end

end
