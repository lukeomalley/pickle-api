module Mutations
  class SignInUser < BaseMutation
    argument :username, String, required: true
    argument :password, String, required: true

    field :user, Types::UserType, null: true
    field :token, String, null: false
    field :errors, [String], null: false

    def resolve(username:, password:)
      user = User.find_by(username: username)
      if user&.authenticate(password)
        token = encode(user_id: user.id)
        {
          token: token,
          user: user,
          errors: []
        }
      else
        {
          user: nil,
          token: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end
end