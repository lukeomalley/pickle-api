# frozen_string_literal: true

module Mutations
  class DeletePickle < Mutations::BaseMutation
    argument :pickle_id, Int, required: true

    field :pickle, Types::PickleType, null: false
    field :errors, [String], null: false

    def resolve(pickle_id:)
      pickle = Pickle.find(pickle_id)
      if Pickle.destroy(pickle_id)
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
