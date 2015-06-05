class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.timestamp :start_time
      t.timestamp :end_time
      t.string :description
      t.string :state
      t.string :criteria
      t.integer :task_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
