class CommentsController < ApplicationController
  def index
    @post = Post.find(params[:post_id])
    @comments = @post.comments.paginate(page: params[:page], per_page: 100)

    respond_to do |format|
      format.html
      format.js
    end
  end
end
