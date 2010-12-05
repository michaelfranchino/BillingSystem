class AddDoBtoEmployee < ActiveRecord::Migration
  def self.up
    add_column :employees, :date_of_birth, :date
  end

  def self.down
    drop_column :employees, :date_of_birth
  end
end
