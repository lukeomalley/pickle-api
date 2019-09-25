# frozen_string_literal: true

class Option < ApplicationRecord
  belongs_to :pickle
  has_many :selections, dependent: :destroy

  def percentage
    option_selections = Selection.where(option_id: Option.last.id).count.to_f
    total_selections = pickle.selections.count.to_f
    return 0 if total_selections.zero?

    (option_selections / total_selections) * 100
  end
end
