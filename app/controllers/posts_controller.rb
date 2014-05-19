class PostsController < ApplicationController
	before_action :logged_in_user, only: [:create, :destroy]
	before_action :correct_user, only: :destroy

	  def name
	  	@id = Post.find_by(id: params[:id])
	  	@name = User.find_by(id: params[:id])
	  end

	  def create
	    @post = current_user.posts.build(post_params)
	    if @post.save
	      flash[:success] = "Post created!"
	      redirect_to psp_url
	    else
	      render 'static_pages/home'
	    end
	  end

	  def destroy
	  	@post.destroy
	  	redirect_to current_user
	  end

	  private

	    def post_params
	      params.require(:post).permit(:content)
	    end

	    def correct_user
	    	@post = current_user.posts.find_by(id: params[:id])
	    	redirect_to root_url if @post.nil?
	    end
end