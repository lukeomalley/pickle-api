# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_user, mutation: Mutations::CreateUser
    field :create_comment, mutation: Mutations::CreateComment
    field :create_selection, mutation: Mutations::CreateSelection
  end
end
