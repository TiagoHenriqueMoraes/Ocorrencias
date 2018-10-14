class CreateOccurences < ActiveRecord::Migration[5.2]
  def change
    create_table :occurences do |t|
      t.integer :status
      t.string :treatment
      t.string :description
      t.references :employee, foreign_key: true
      t.references :turn, foreign_key: true
      t.references :team, foreign_key: true
      t.references :supervisor, foreign_key: true
      t.references :guideline, foreign_key: true

      t.timestamps
    end
  end
end
