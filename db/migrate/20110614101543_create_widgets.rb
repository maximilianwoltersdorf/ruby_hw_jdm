class CreateWidgets < ActiveRecord::Migration
  def self.up
    create_table :widgets do |t|
      t.integer :dashboard_id
      t.integer :sourcetype_id
      t.string :sourcename
      t.string :sourceurl

      t.timestamps
    end
  end

  def self.down
    drop_table :widgets
  end
end