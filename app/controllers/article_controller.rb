class ArticleController < ApplicationController

   
def index
    @arti=Article.where("estado != 0 ")
  end

def show 
  
end
end
