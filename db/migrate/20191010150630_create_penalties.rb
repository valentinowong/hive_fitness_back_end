class CreatePenalties < ActiveRecord::Migration[5.2]
  def change
    create_table :penalties do |t|
      t.integer :group_id
      t.integer :goal_days
      t.float :amount

      t.timestamps
    end
  end
end
