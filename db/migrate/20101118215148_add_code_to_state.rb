class AddCodeToState < ActiveRecord::Migration
  def self.up
    add_column :states, :code, :string, :limit => 10, :null => false, :default => "XX"
  end

  def self.down
    remove_column :states, :code
  end
end
