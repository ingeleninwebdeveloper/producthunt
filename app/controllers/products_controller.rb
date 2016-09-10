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

<<<<<<< HEAD
def edit	
@product=Product.find(params[:id])
end

def destroy
  product = Product.find(params[:id])
  product.destroy

  redirect_to products_path, notice: "El producto fue eliminado con éxito"
end

def update
@product=Product.find(params[:id])
if @product.update(product_params)
	redirect_to products_path, notice: 'El producto ha sido modificado con exito'
else
render :edit
end

end

=======
>>>>>>> 6524c2ac6dfe6670ca48cc63b465900a70ed198d

private

def product_params

	params.require(:product).permit(:name, :url, :description)
end

end
