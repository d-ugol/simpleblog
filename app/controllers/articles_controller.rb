class ArticlesController < ApplicationController

	before_action :set_article, only: [:show, :edit, :update, :destroy, :authorize_user]
	before_action :authenticate_user!, except: [:index, :show]
	before_action :authorize_user, only: [:edit, :update, :destroy]

	def index
		@articles = Article.all
	end
	

	def show
		# Commented out. This is handled by the set_article method.
    # @article = Article.find(params[:id])
  end

	def new
	  @article = Article.new
	end
	

	def edit
		# Commented out. This is handled by the set_article method.
		# @article = Article.find(params[:id])
	end


	def create
	  @article = Article.new(article_params)
	  @article.user = current_user

	 	
	  if @article.save
	    redirect_to @article, notice: 'Entry created successfully.'
	  else
	    render 'new'
	  end
	end


	# PATCH/PUT
	def update
	  
	  if @article.update(article_params)
	    redirect_to @article, notice: 'Update was successful.'
	  else
	    render 'edit'
	  end
	end


	def destroy
	  @article.destroy
	 	redirect_to articles_path, notice: 'Deletion was successful.'
	end
	 
	private

		def set_article
			@article = Article.find(params[:id])
		end

	  def article_params
	    params.require(:article).permit(:title, :text)
	  end

	  def authorize_user
	  	unless @article.user == current_user
	  		redirect_to articles_url, notice: 'You are not authorized for this action.'
	  	end
	  end

end
