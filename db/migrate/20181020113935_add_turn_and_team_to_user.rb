class AddTurnAndTeamToUser < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :turn, foreign_key: true
    add_reference :users, :team, foreign_key: true
  end
end
