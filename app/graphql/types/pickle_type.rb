module Types
  class PickleType < Types::BaseObject
    field :id, ID, null: false
    field :description, String, null: true

    # assoications
    field :user, Types::UserType, null: false
    field :category, Types::CategoryType, null: false
    field :options, [Types::OptionType], null: false
    field :comments, [Types::CommentType], null: true
    field :commentors, [Types::UserType], null: true
    field :voters, [Types::UserType], null: true
    # TODO: look into this this is breaking the code??
    field :selections, [Types::SelectionType], null: true
  end
end
