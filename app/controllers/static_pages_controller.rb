class StaticPagesController < ApplicationController
	def home
		@post = current_user.posts.build if logged_in?
	end

	def pspindex
		@posts = Post.all
	end

end
