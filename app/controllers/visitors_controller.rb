class VisitorsController < ApplicationController
  def index
  	@products = Product.all.order
  	if params[:sort]=='SortProducts'
    @products = @products.order('name desc')
	end
  end

end
