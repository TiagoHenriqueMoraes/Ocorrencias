class AddQuantityToOccurrence < ActiveRecord::Migration[5.2]
  def change
    add_column :occurrences, :quantity, :integer
  end
end
