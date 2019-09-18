# frozen_string_literal: true

class Pickle < ApplicationRecord
  belongs_to :user
  belongs_to :category

  has_many :options, dependent: :destroy
  has_many :selections, through: :options, dependent: :destroy

  has_many :comments, dependent: :destroy

  # these are aliases for the users that have commented and voted on a pickle
  has_many :commentors, through: :comments, source: :user
  has_many :voters, through: :selections, source: :user
end
