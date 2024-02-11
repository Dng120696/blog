class ArticlesController < ApplicationController
  def index
     @articles = Article.all
  end
  def show
    find_article_params
  end
  def edit
    find_article_params
  end
  def update
    find_article_params
    if @article.update(article_params)

      redirect_to @article
    else
      render 'edit'
    end
  end
  def new
    @article = Article.new
  end
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end
  def destroy
    find_article_params
    @article.destroy
    redirect_to @article
  end



  private
  def find_article_params
    @article  = Article.find(params[:id])
  end
  def article_params
    params.require(:article).permit(:title,:body)
  end
end
