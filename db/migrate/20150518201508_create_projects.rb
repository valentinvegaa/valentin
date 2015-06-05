class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.timestamp :start_time
      t.timestamp :end_time
      t.timestamp :limit_time
      t.integer :client_id
      t.json :config

      t.timestamps null: false
    end
  end
end
