require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  def index
    @post = Post.find(1) 
  end
end