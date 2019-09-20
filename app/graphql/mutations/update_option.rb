module Mutations
  class UpdateOption < Mutations::BaseMutation
    argument :option_id, ID, required: true
    argument :text, String, required: false
    argument :img_url, String, required: false

    field :option, Types::OptionType, null: true
    field :errors, [String], null: false

    def resolve(option_id:, text:, img_url:)
      option = Option.find(option_id)
      if option.update(text: text, img_url: img_url)
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
