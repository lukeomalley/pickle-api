module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :username, String, null: true
    field :email, String, null: true
    field :bio, String, null: true
    field :img_url, String, null: true

    # relations
    field :pickles, [Types::PickleType], null: true
    field :comments, [Types::CommentType], null: true
    field :commented_pickles, [Types::PickleType], null: true
    field :voted_pickles, [Types::PickleType], null: false
  end
end
