module Types
  class CategoryType < Types::BaseObject
    field :name, String, null: false
    field :pickles, [Types::PickleType], null: true
  end
end
