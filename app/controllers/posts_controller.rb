class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def new
  end

  def create
    @article = Post.create!(author_params)
    # if @author.valid?
    #   @author.save
      redirect_to post_path(@article)
    # else
    #   render :new
    # end
  end

  def edit
  end

  def update
    @post.update(post_params)
    if @post.valid?
      redirect_to post_path(@post)
    else 
      render :edit
    end
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
