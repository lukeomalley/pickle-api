# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_comment, mutation: Mutations::CreateComment
    field :create_selection, mutation: Mutations::CreateSelection
    field :create_pickle, mutation: Mutations::CreatePickle
    field :create_option, mutation: Mutations::CreateOption
    field :create_category, mutation: Mutations::CreateCategory

    field :delete_pickle, mutation: Mutations::DeletePickle
    field :delete_user, mutation: Mutations::DeleteUser
    field :delete_comment, mutation: Mutations::DeleteComment

    field :update_pickle, mutation: Mutations::UpdatePickle

    # AUTH
    field :sign_in_user, mutation: Mutations::SignInUser

    # TODO: TEST THE MUTATIONS BELOW
    field :update_user, mutation: Mutations::UpdateUser
    field :update_comment, mutation: Mutations::UpdateComment
    field :update_option, mutation: Mutations::UpdateOption
  end
end
