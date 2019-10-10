class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.integer :user_group_id
      t.integer :week_number
      t.integer :goal_days

      t.timestamps
    end
  end
end
