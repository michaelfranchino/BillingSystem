class AddFieldsToContact < ActiveRecord::Migration
  def self.up
    add_column :contacts, :contactable, :integer
    add_column :contacts, :contactable_type, :string
  end

  def self.down
    drop_column :contacts, :contactable
    drop_column :contacts, :contactable_type
  end
end
