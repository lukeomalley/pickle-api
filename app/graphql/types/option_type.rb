# frozen_string_literal: true

module Types
  class OptionType < Types::BaseObject
    field :id, ID, null: false
    field :text, String, null: true
    field :img_url, String, null: true
    field :percentage, Float, null: true

    field :selections, [Types::SelectionType], null: true
  end
end
