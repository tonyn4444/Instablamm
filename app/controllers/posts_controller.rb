class PostsController < ApplicationController

	before_filter :authorize
	
	def index
		@user = User.find(current_user)

		@posts = @user.posts
	end

	def show
		@post = Post.find(params[:id])

	end

	def new
		@post = Post.new
	end

	def create
		@user = User.find(current_user)
		@post = @user.posts.create(post_params)
		redirect_to user_posts_path
	end

	private

	def post_params
		params.require(:post).permit(:caption, :user_id, :image)
	end
end