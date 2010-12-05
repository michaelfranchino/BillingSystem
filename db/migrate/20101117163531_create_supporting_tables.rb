class CreateSupportingTables< ActiveRecord::Migration
  def self.up

    create_table :countries do |t|
      t.column :code, :string, :limit => 2, :null => false
      t.column :name, :string, :limit => 60, :null => false
    end
      
    create_table :states do |t|
      t.column :name, :string, :limit => 60, :null => false
      t.column :country_id, :integer, :null => false
    end
    
    create_table :territories do |t|
      t.column :name, :string, :limit => 60, :null => false
      t.column :description, :string
      t.column :country_id, :integer
      t.column :state_id, :integer
      
      t.timestamps
    end
  end
      
  def self.down
    drop_table :territories
    drop_table :countries
    drop_table :states
  end
end
