class FixEmployee < ActiveRecord::Migration
  def self.up
    drop_table :employees
    
    create_table :employees do |t|
      t.string :first_name, :limit => 60, :null => false
      t.string :last_name, :limit => 60, :null => false
      t.float  :standard_rate
      t.boolean :enabled, :default => true
      t.references :territory
      
      t.timestamps
    end
  end

  def self.down
  end
end
