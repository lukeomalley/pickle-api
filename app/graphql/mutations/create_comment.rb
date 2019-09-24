# frozen_string_literal: true

module Mutations
  class CreateComment < Mutations::BaseMutation
    argument :pickle_id, Int, required: true
    argument :text, String, required: true

    field :comment, Types::CommentType, null: true
    field :errors, [String], null: false

    def resolve(pickle_id:, text:)
      pickle = Pickle.find(pickle_id)
      user = context[:current_user]
      comment = Comment.new(pickle: pickle, user: user, text: text)
      if comment.save
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
