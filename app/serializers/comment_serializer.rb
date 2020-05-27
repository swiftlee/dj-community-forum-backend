# frozen_string_literal: true

class CommentSerializer
  include JSONAPI::Serializer

  attribute :id
  attribute :user
  attribute :body
end
