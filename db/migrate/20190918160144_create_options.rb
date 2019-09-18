class CreateOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :options do |t|
      t.references :pickle, null: false, foreign_key: true
      t.string :text
      t.string :img_url
    end
  end
end
