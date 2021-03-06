# frozen_string_literal: true

module Mutations
  class CreateOption < Mutations::BaseMutation
    argument :pickle_id, ID, required: true
    argument :text, String, required: false
    argument :img_url, String, required: false

    field :option, Types::OptionType, null: true
    field :errors, [String], null: false

    def resolve(pickle_id:, text:, img_url:)
      # TODO: passing all three parameters is required here, but they can be passed as empty strings
      # TODO: if the img_url.empty? then we know that it is just a text option
      pickle = Pickle.find(pickle_id)
      option = Option.create(pickle: pickle, text: text, img_url: img_url)
      if option.save
        {
          option: option,
          errors: []
        }
      else
        {
          option: nil,
          errors: option.errors.full_messages
        }
      end
    end
  end
end
