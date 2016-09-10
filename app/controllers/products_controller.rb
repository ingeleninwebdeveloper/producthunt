class ProductsController < ApplicationController

def index 

@products = Product.all  #Guardo en la variable productos todos los productos a través de Products.all

	
end


def new

@product = Product.new
end



end
