class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.integer :group_id
      t.datetime :datetime
      t.text :description
      t.boolean :approved

      t.timestamps
    end
  end
end
