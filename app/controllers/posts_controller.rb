# frozen_string_literal: true

class PostsController < ApplicationController
  def index
    posts = Post.joins(:comments)
    render json: PostSerializer.new(posts).serialized_json
  end
end
