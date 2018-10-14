class CreateGuidelines < ActiveRecord::Migration[5.2]
  def change
    create_table :guidelines do |t|
      t.string :item
      t.references :group, foreign_key: true

      t.timestamps
    end
  end
end
