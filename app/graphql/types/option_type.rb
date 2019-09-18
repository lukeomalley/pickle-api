module Types
  class OptionType < Types::BaseObject
    field :id, ID, null: false
    field :text, String, null: true
    field :img_url, String, null: true

    # TODO: I dont know what is wrong with this
    field :selections, [Types::SelectionType], null: true
  end
end
