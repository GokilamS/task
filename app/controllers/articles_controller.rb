class ArticlesController < ApplicationController
def new
	@article=Article.new
end
def create
	 #render plain: params[:signup].inspect
	 #byebug
	 @article = Article.new(signup_params)
  	# @article.save
  	if @article.save
     redirect_to @article
 else 
 	#redirect_to :action => "index"
 	#redirect_to root_url
 	render "sign"
 end
end
def v
	end
private
	def signup_params
    params.require(:signup).permit(:Username, :Email, :Password, :ConfirmPassword)
  end
end
