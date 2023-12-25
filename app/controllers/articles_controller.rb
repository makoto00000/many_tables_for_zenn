class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to @article
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    if @article.update(article_params)
      redirect_to @article
    end
  end

  def destroy
    @article = Article.find(params[:id]).destroy
    # redirect_to root_url, status: :see_other
    redirect_to root_url
  end

  private
  def article_params
    params.require(:article).permit(:title, :body)
  end
end
