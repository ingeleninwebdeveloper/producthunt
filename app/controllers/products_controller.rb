class ProductsController < ApplicationController

def index 

@products = Product.all  #Guardo en la variable productos todos los productos a través de Products.all

	
end


def new

@product = Product.new
end


def create

@product=Product.new(product_params)
if @product.save
	redirect_to products_path, notice:'el producto fue publicado con exito'
else
	render :new
end
end

def show
@product=Product.find(params[:id])

end

def edit	
@product=Product.find(params[:id])
end

private

def product_params

	params.require(:product).permit(:name, :url, :description)
end

end
