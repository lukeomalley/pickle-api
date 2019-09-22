# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :pickles

  validates_uniqueness_of :name
end
