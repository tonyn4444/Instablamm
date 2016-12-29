class PostsController < ApplicationController

	before_filter :authorize
	
	def index
		
	end

	def new
	end

	def create
	end

	private

	def post_params
		params.require(:post).permit(:caption, :user_id)
	end
end