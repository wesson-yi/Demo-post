class PostsController < ApplicationController
  def show

    # Retrieve instruction post
    # We use Post.first here for simplicity because the ID is randomized
    # However, your code should not rely on static IDs
    @post = Post.first
    @comments = @post.comments.paginate(page: params[:page], per_page: 100)
  end
end
