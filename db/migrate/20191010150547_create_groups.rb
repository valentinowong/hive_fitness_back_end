class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.boolean :active
      t.integer :admin_id

      t.timestamps
    end
  end
end
