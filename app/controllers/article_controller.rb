class ArticleController < ApplicationController

   
def index
    @arti=Article.where("estado != 0 ")
  end

  def new
    @title = "hsjdhfgsdhg"    
    @arti= Article.new
  end

  def create
    @arti= Article.new
    @arti.titulo=params[:arti][:titulo]
    @arti.contenido=params[:arti][:contenido]
    @arti.fecha=params[:arti][:fecha]
    @arti.estado=params[:arti][:estado]
    @arti.category_id=params[:arti][:category_id]

    if @arti.save
    redirect_to articles_index_path
    else
      render :new
    end
  end

  def edit
    @title = "Paises"
    @arti = Article.find(params[:id])
    
  end

  def update
    @arti = Article.find(params[:arti][:id])
    @arti.descripcion=params[:arti][:descripcion]
    @arti.abrev=params[:arti][:abrev]
    if @arti.save
    redirect_to article_index_path
    else
      render :edit
    end
  end

  def destroy
    @arti = Article.find(params[:id])
    @arti.estado = 0
    @arti.save
    redirect_to article_index_path
  end
end
