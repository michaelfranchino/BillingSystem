  class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.string :first_name
      t.string :last_name
      t.float :standard_rate

      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
