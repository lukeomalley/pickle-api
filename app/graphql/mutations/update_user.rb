# frozen_string_literal: true

module Mutations
  class UpdateUser < Mutations::BaseMutation
    argument :name, String, required: false
    argument :username, String, required: false
    argument :email, String, required: false
    argument :bio, String, required: false
    argument :img_url, String, required: false

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(name:, username:, email:, bio:, img_url:)
      user = context[:current_user]
      if user.update(name: name, username: username, email: email, bio: bio, img_url: img_url)
        { user: user, errors: [] }
      else
        { user: nil, errors: user.errors.full_messages }
      end
    end
  end
end
