class ArticleController < ApplicationController
  def new
  	 @article = Article.new
  end

  def index
  @article = Article.all
 end

  def show
  @article = Article.find(params[:id])
 end

 def edit
    @article = Article.find(params[:id])
end

 def update
  @article = Article.find(params[:id])
  if @article.update(article_params)
   flash[:notice] = "Article was updated"
   redirect_to article_path(@article)
  else
   flash[:notice] = "Article was not updated"
   render 'edit'
  end
 end

private
  def article_params
   params.require(:article).permit(:title, :description)
  end

end