# frozen_string_literal: true

module Mutations
  class CreateSelection < Mutations::BaseMutation
    argument :user_id, ID, required: true
    argument :option_id, ID, required: true

    field :success, Boolean, null: true
    field :errors, [String], null: false

    def resolve(user_id:, option_id:)
      user = User.find(user_id)
      option = Option.find(option_id)
      selection = Selection.new(user: user, option: option)

      if selection.save
        {
          success: true,
          errors: []
        }
      else
        {
          success: false,
          errors: selection.errors.full_messages
        }
      end
    end
  end
end
