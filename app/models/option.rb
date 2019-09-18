# frozen_string_literal: true

class Option < ApplicationRecord
  belongs_to :pickle
  has_many :selections, dependent: :destroy
end
