# frozen_string_literal: true

module Mutations
  class CreateSelection < Mutations::BaseMutation
    argument :option_id, Int, required: true

    field :pickle, Types::PickleType, null: false
    field :errors, [String], null: false

    def resolve(option_id:)
      user = context[:current_user]
      option = Option.find(option_id)
      selection = Selection.new(user: user, option: option)

      if selection.save
        {
          pickle: option.pickle,
          errors: []
        }
      else
        {
          errors: selection.errors.full_messages
        }
      end
    end
  end
end
