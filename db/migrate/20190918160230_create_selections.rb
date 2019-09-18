class CreateSelections < ActiveRecord::Migration[6.0]
  def change
    create_table :selections do |t|
      t.references :user, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true
    end
  end
end
