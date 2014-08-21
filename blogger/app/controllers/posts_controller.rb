class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		# implicit redirect 
		@tags = Tag.all
	end

	def create
		post = params[:post].permit(:title, :description, :author)
	
		tags = params[:selectmultiple]

		newPost = Post.create(post) 
		tags.each do |tag|
			newPost.tags << Tag.create(tag)
		end

		redirect_to '/posts'
	end

	def show
		id = params[:id]
		@post = Post.find_by_id(id)
	end

end