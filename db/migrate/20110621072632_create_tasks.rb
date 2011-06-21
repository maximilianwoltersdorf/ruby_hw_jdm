class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
      t.string :user_email
      t.string :task_title
      t.date :task_date

      t.timestamps
    end
  end

  def self.down
    drop_table :tasks
  end
end
