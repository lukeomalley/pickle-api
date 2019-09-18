# frozen_string_literal: true

class CreatePickles < ActiveRecord::Migration[6.0]
  def change
    create_table :pickles do |t|
      t.references :user, null: false, foreign_key: true
      t.references :category, null: false, foreign_key: true
      t.string :description
    end
  end
end
