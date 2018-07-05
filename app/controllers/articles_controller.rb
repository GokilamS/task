class ArticlesController < ApplicationController
def new
	@article=Article.new
end
def create
	 #render plain: params[:signup].inspect
	 byebug
	 @article = Article.new(signup_params)
  	# @article.save
  	if @article.save
     redirect_to @article
 else 
 	render 'new'
 end
end
private
	def signup_params
    params.require(:signup).permit(:UserName, :Email, :Password, :ConfirmPassword)
  end
end
