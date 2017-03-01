class VisitorsController < ApplicationController
  def index
  	@products = Product.all
  	if params[:sort]=='alphabetical'
    	@products = @products.order('name asc')
    end
  end
end
