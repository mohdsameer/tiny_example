class BlogsController < ApplicationController
  def show
    @blog = Blog.find(params[:id])
  end

  def create
    @blog = Blog.new(blog_params)
    if @blog.save
      redirect_to @blog
    else
      render 'welcome/index'
    end
  end

  private
    def blog_params
      params.require(:blog).permit(:content)
    end
end