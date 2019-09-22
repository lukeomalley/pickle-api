# frozen_string_literal: true

module Mutations
  class UpdatePickle < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :description, String, required: false
    argument :category_id, ID, required: false

    field :pickle, Types::PickleType, null: true
    field :errors, [String], null: false

    def resolve(id:, description: nil, category_id: nil)
      pickle = Pickle.find(id)

      if pickle.update(description: description, category_id: category_id)
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
