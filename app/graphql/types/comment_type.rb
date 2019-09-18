# frozen_string_literal: true

module Types
  class CommentType < Types::BaseObject
    field :text, String, null: false
    field :user, Types::UserType, null: false
    field :pickle, Types::PickleType, null: false
  end
end
