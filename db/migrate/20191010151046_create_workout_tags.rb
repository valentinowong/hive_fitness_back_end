class CreateWorkoutTags < ActiveRecord::Migration[5.2]
  def change
    create_table :workout_tags do |t|
      t.integer :workout_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
