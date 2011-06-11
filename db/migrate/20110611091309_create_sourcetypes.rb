class CreateSourcetypes < ActiveRecord::Migration
  def self.up
    create_table :sourcetypes do |t|
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :sourcetypes
  end
end
