class AddFieldsToEmployees < ActiveRecord::Migration
  def self.up
    add_column :employees, :enabled, :boolean
    add_column :employees, :home_territory, :integer
  end

  def self.down
    remove_column :employees, :home_territory
    remove_column :employees, :enabled
  end
end
