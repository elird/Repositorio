class ArticleController < ApplicationController

   
def index
    @arti=Article.where("estado != 0 ")
  end

def show 
  	@arti=Article.find(params[:id])
end
end
