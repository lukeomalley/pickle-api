# frozen_string_literal: true

module Mutations
  class CreateUser < Mutations::BaseMutation
    argument :name, String, required: true
    argument :username, String, required: true
    argument :email, String, required: false
    argument :bio, String, required: false
    argument :img_url, String, required: false

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    def resolve(name:, username:, email:, bio:, img_url:)
      user = User.new(name: name, username: username, email: email, bio: bio, img_url: img_url)
      if user.save
        # user successfully created! return the user and no errors
        { user: user, errors: [] }
      else
        # user failed to save return nil user and errors
        { user: nil, errors: user.errors.full_messages }
      end
    end
  end
end
