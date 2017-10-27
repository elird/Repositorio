class CategoryController < ApplicationController
	
   
def index

    @category=Category.find(params[:id])
    @arti=Article.where('category_id= ?',params[:id])
  end

  def show
    @category=Category.find(params[:id])
    @arti=Article.where('category_id= ?',params[:id])
  end


end
