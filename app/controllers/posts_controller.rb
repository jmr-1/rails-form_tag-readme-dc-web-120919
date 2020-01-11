class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  
  def new 

    #just loads the new post page
  end 

  def create #this is the Sinatra post method with redirect 

    @post = Post.create(title: params[:post][:title], description: params[:post][:description])
    #note the nested arrays format that follows the form post layout 
    redirect_to posts_path #without specifying anything, posts_path goes to index 
              #note the difference with pluralization: custom_post_path (singular)
  end 
  
end