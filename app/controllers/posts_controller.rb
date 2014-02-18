class PostsController < ApplicationController
	before_action :require_login, only: [:new, :create]

	def new
	end

	def create
		@user = User.find(session[:user_id])
		@post = Post.create(post_params)
    # This shovel operator (<<) makes a DB call. better to set the user above, before saving:
    # @post = Post.new(post_params)
    # @post.user = @user
		@user.posts << @post
		redirect_to @post
	end

	def show
		@post = Post.find(params[:id])
	end

	private
	def post_params
		params.require(:post).permit(:title, :description, :price, :location, :category_id)
	end
end
