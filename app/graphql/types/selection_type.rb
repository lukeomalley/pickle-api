# frozen_string_literal: true

module Types
  class SelectionType < Types::BaseObject
    field :user, Types::UserType, null: false
    field :option, Types::OptionType, null: false
  end
end
