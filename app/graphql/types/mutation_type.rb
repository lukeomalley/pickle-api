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
  end
end
