module Types
  class QueryType < Types::BaseObject

    field :users, [Types::UserType], null: false
    def users
      User.all
    end

    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end
    def user(id:)
      User.find(id)
    end


    field :pickles, [Types::PickleType], null: false
    def pickles
      Pickle.all
    end

    field :options, [Types::OptionType], null:false do
      argument :pickleId, ID, required: true
    end
    def options(pickleId:)
      Option.where(pickle_id: pickleId)
    end
  end
end
