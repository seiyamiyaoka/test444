class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end
  
  def show
    @blog = Blog.find(params[:id])
  end
  
  def new
    @blog = Blog.new  
  
  end
  
  def create 
    @blog = Blog.new(blog_params)
  if  @blog.save
    redirect_to blogs_path
  else
    render "new"
  end
  end
  
  def edit
  end
     def update
    @blog = Blog.find(params[:id])
    if blog.update(blog_params)
      redirect_to blogs_path
    else
      render "edit"
  end
     end
  
  private
  def blog_params
  params[:blog].permit(:title)
  end
 
  end
 
   
  end
end
