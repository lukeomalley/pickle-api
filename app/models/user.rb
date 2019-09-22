# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  has_many :comments, dependent: :destroy
  has_many :pickles, dependent: :destroy

  has_many :selections, dependent: :destroy
  has_many :options, through: :selections

  # aliases for the pickles that a user has interacted with
  has_many :commented_pickles, through: :comments, source: :pickle
  has_many :voted_pickles, through: :options, source: :pickle

  validates_uniqueness_of :username
end
