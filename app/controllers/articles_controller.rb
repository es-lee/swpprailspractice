class ArticlesController < ApplicationController
	def show
		@article = Article.find(params[:id])
	end

	def new
	end

	def create
		@article = Article.new(article_params)
		#initialize new model with filtered parameter.
		@article.save
		#store the model to DB
		#Returns success or failure as a boolean value
		redirect_to @article
		#redirect automatically to 'show' action, defined later.
	end

	private
	def article_params
		params.require(:article).permit(:title, :text)
		#whitelist our controller parameters to prevent wrongful mass assignment
	end
end
