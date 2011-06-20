class InsertDataToSourcetypes < ActiveRecord::Migration
  def self.up
    Sourcetype.create!({ :name => "RSS" })
  end

  def self.down
  end
end
