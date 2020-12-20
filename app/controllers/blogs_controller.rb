class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end
  def new
    @blog=Blog.new
  end
  def create
    Blog.create(blog_params)
  end
  def edit
    @blog=Blog.find(params[:id])
  end
  def update
    @blog=Blog.find(params[:id])
    @blog.update(blog_params) if @blog.user_id == current_user.id
    redirect_to root_path
  end
  def show
    @blog = Blog.find(params[:id])  
  end

  private
  def blog_params
    params.require(:blog).permit(:content).merge(user_id: current_user.id)
  end

end
