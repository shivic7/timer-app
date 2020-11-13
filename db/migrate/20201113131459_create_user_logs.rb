class CreateUserLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_logs do |t|
      t.integer :user_id
      t.string :session
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
