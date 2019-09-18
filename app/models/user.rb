# frozen_string_literal: true

class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :pickles, dependent: :destroy

  has_many :selections
  has_many :options, through: :selections

  # maybe these alias will work, but im not sure right now
  # TODO: check if these methods work
  has_many :commented_pickles, through: :comments, source: :pickle
  has_many :voted_pickles, through: :options, source: :pickle
end
