class BlogsController < ApplicationController
  def new
    @blog=Blog.new
  end
  def def create
    Blog.create(blog_params)
  end

  private
  def blog_params
    params.require(:blog).permit(:content).merge(user_id: current_user.id)
  end

end
