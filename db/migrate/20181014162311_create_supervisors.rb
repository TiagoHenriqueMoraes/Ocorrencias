class CreateSupervisors < ActiveRecord::Migration[5.2]
  def change
    create_table :supervisors do |t|
      t.string :name

      t.timestamps
    end
  end
end
