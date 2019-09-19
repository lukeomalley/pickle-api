# TODO CHECK IF THIS WORKS
module Mutations
  class UpdateComment < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :piclke_id, ID, required: false
    argument :text, String, required: false

    field :comment, Types::CommentType, null: true
    field :errors, [String], null: false

    def resolve(id:, pickle_id:, text:)
      comment = Comment.find(id)

      if comment.update(id: id, pickle_id: pickle_id, text: text)
        {
          pickle: pickle,
          errors: []
        }
      else
        {
          pickle: nil,
          errors: pickle.errors.full_messages
        }
      end
    end
  end
end