class AddGroupToOccurrence < ActiveRecord::Migration[5.2]
  def change
    add_reference :occurrences, :group, foreign_key: true
  end
end
