# frozen_string_literal: true

module Mutations
  class DeleteComment < Mutations::BaseMutation
    argument :comment_id, ID, required: true

    field :comment, Types::CommentType, null: true
    field :errors, [String], null: false

    def resolve(comment_id:)
      comment = Comment.find(comment_id)
      if comment.destroy
        {
          comment: comment,
          errors: []
        }
      else
        {
          comment: nil,
          errors: comment.errors.full_messages
        }
      end
    end
  end
end
