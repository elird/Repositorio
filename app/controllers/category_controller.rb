class CategoryController < ApplicationController
	
   
def index

    @category=Category.where(:estago=>1)
  end

  def new
    @title = "Paises"    
    @category= Category.new
  end

  def create
    @category= Category.new
    @category.titulo=params[:category][:titulo]
    @category.descrip=params[:category][:descrip]
    @category.estago= 1

    if @category.save
    redirect_to category_index_path
    else
      render :new
    end
  end

  def edit
    @title = "Paises"
    @category = Category.find(params[:id])
    
  end

  def update
    @category = Category.find(params[:category][:id])
    @category.descripcion=params[:category][:descripcion]
    @category.abrev=params[:category][:abrev]
    if @category.save
    redirect_to article_index_path
    else
      render :edit
    end
  end

  def destroy
    @category = Category.find(params[:id])
    @category.estago= 0
    @category.save
    redirect_to article_index_path
  end
end
