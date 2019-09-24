# frozen_string_literal: true

module Mutations
  class CreatePickle < Mutations::BaseMutation
    argument :category_id, Int, required: true
    argument :description, String, required: true

    argument :option_one, String, required: false
    argument :option_two, String, required: false
    argument :option_three, String, required: false
    argument :option_four, String, required: false

    field :pickle, Types::PickleType, null: true
    field :errors, [String], null: false

    def resolve(category_id:, description:, option_one: nil, option_two: nil, option_three: nil, option_four: nil)
      user = context[:current_user]
      category = Category.find(category_id)
      pickle = Pickle.new(user: user, category: category, description: description)
      Option.create(pickle: pickle, text: option_one) unless option_one == ''
      Option.create(pickle: pickle, text: option_two) unless option_two == ''
      Option.create(pickle: pickle, text: option_three) unless option_three == ''
      Option.create(pickle: pickle, text: option_four) unless option_four == ''
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
