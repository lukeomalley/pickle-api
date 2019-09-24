# frozen_string_literal: true

module Mutations
  class CreatePickle < Mutations::BaseMutation
    argument :category_id, Int, required: true
    argument :description, String, required: true

    field :pickle, Types::PickleType, null: true
    field :errors, [String], null: false

    def resolve(category_id:, description:)
      user = context[:current_user]
      category = Category.find(category_id)
      pickle = Pickle.new(user: user, category: category, description: description)

      if pickle.save
        {
          pickle: pickle,
          errors: []
        }
      else
        {
          pickle: nil,
          errors: pickle.errors.full_messages
        }
      end
    end
  end
end
