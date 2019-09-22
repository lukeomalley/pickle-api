# frozen_string_literal: true

module Mutations
  class UpdateUser < Mutations::BaseMutation
    argument :user_id, ID, required: true
    argument :name, String, required: true
    argument :username, String, required: true
    argument :email, String, required: false
    argument :bio, String, required: false
    argument :img_url, String, required: false

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(user_id:, name:, username:, email:, bio:, img_url:)
      user = User.find(user_id)
      if user.update(name: name, username: username, email: email, bio: bio, img_url: img_url)
        { user: user, errors: [] }
      else
        { user: nil, errors: user.errors.full_messages }
      end
    end
  end
end
