# frozen_string_literal: true

module Mutations
  class DeleteUser < Mutations::BaseMutation
    argument :user_id, ID, required: true

    field :user, Types::UserType, null: true
    field :errors, [String], null: false

    def resolve(user_id:)
      user = User.find(user_id)
      if user.destroy
        {
          user: user,
          errors: []
        }
      else
        {
          user: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end
end
