module Mutations
  class CreateCategory < Mutations::BaseMutation
    argument :name, String, required: true

    field :category, Types::CategoryType, null: true
    field :errors, [String], null: false

    def resolve(name:)
      category = Category.new(name: name)
      if category.save
        {
          category: category,
          errors: []
        }
      else
        {
          category: nil,
          errors: category.errors.full_messages
        }
      end
    end
  end
end