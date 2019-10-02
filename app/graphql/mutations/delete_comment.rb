# frozen_string_literal: true

module Mutations
  class DeleteComment < Mutations::BaseMutation
    argument :comment_id, Int, required: true

    field :pickle, Types::PickleType, null: true
    field :comment, Types::CommentType, null: true
    field :errors, [String], null: false

    def resolve(comment_id:)
      comment = Comment.find(comment_id)
      if comment.destroy
        {
          comment: comment,
          pickle: comment.pickle,
          errors: []
        }
      else
        {
          comment: nil,
          pickle: nil,
          errors: comment.errors.full_messages
        }
      end
    end
  end
end
