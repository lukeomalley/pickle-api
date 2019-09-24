# frozen_string_literal: true

module Mutations
  class CreateUser < Mutations::BaseMutation
    argument :name, String, required: true
    argument :username, String, required: true
    argument :email, String, required: false
    argument :bio, String, required: false
    argument :img_url, String, required: false
    argument :password, String, required: true

    field :user, Types::UserType, null: false
    field :token, String, null: false
    field :errors, [String], null: false

    def resolve(name:, username:, email: nil, bio: nil, img_url: nil, password: )
      user = User.new(name: name, username: username, email: email, bio: bio, img_url: img_url, password: password, password_confirmation: password)
      if user.save
        # user successfully created! return the user and no errors
        token = encode(user_id: user.id)

        { user: user, token: token, errors: [] }
      else
        # user failed to save return nil user and errors
        { user: nil, token: nil, errors: user.errors.full_messages }
      end
    end
  end
end
