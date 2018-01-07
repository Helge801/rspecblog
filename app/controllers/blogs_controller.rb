class BlogsController < ApplicationController

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def show
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(blog_params)
    @blog.save
    redirect_to @blog
  end

  def destroy
    @blog = Blog.find(params[:id])
    @blog.delete
    redirect_to blogs_path
  end

  private

  def blog_params
    params.require(:blog).permit(:title, :body, :image)
  end

end
