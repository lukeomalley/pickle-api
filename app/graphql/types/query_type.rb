# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # Users
    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :username, String, required: false
    end
    def user(username:)
      User.find_by(username: username)
    end

    field :me, Types::UserType, null: true
    def me
      context[:current_user]
    end

    # Pickles
    field :pickles, [Types::PickleType], null: false
    def pickles
      Pickle.all
    end

    field :pickle, Types::PickleType, null: false do
      argument :id, Int, required: true
    end
    def pickle(id:)
      Pickle.find(id)
    end

    # Categories
    field :categories, [Types::CategoryType], null: false
    def categories
      Category.all
    end

    field :category, Types::CategoryType, null: false do
      argument :name, String, required: true
    end
    def category(name:)
      Category.find_by(name: name)
    end
  end
end
