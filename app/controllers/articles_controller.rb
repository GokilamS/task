class ArticlesController < ApplicationController
def new
	@article=Article.new
end
def create
	 @article = Article.new(signup_params)
  	if @article.save
     redirect_to @article
 else 
 	render "sign"
 end
end
private
	def signup_params
    params.require(:signup).permit(:UserName, :Email, :Password, :ConfirmPassword)
  end
end
