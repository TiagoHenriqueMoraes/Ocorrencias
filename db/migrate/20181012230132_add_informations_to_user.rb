class AddInformationsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :kind, :integer
    add_column :users, :active, :boolean, default: true
  end
end
