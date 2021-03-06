class ArticlesController < ApplicationController
before_action :set_article, only: [:show, :edit, :update, :destroy]
  def index
      @articles = Article.all.order('created_at DESC')
  end
  
  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)
  	if @article.save 
        flash[:success] = "Article created successfully"
  	   redirect_to root_path
  	   
  	   else
        flash.now[:danger] = "article was not created"
  	   render 'new'
     end	
  end

  def show
    
end

  def edit
   
  end

  def update
     
    if @article.update(article_params)

      redirect_to @article, notice: 'Article was successfully updated.'

    else

      render 'edit'
    end
  end

def destroy
  

  if @article.destroy
  redirect_to articles_url, notice: 'Article was successfully destroyed.'

end
end

private

def set_article
@article = Article.find(params[:id])
  end

  def article_params
  	params.require(:article).permit(:title, :body)
 end

end
