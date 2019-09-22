# frozen_string_literal: true

module Mutations
  class CreatePickle < Mutations::BaseMutation
    argument :user_id, ID, required: true
    argument :category_id, ID, required: true
    argument :description, String, required: true

    field :pickle, Types::PickleType, null: true
    field :errors, [String], null: false

    def resolve(user_id:, category_id:, description:)
      user = User.find(user_id)
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
