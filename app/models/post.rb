# frozen_string_literal: true

class Post < ActiveRecord::Base
  has_many :comments
  belongs_to :user
end
