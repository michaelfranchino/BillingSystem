class AddColumnSizesToTables < ActiveRecord::Migration
  def self.up

    drop_table :contacts
    drop_table :addresses
    
    create_table :contacts do |t|
      t.column :name, :string, :limit => 60
      t.column :title, :string, :limit => 60
      t.column :first_name, :string, :limit => 60
      t.column :last_name, :string, :limit => 60
      t.column :salutation_id, :integer
      t.timestamps
    end
    
    create_table :addresses do |t|
      t.column :name, :string, :limit => 60
      t.column :city, :string, :limit => 60
      t.column :state, :string, :limit => 10
      t.column :country, :string, :limit => 2
      t.column :postal_code, :string, :limit => 10
      t.column :street, :string, :limit => 255
      t.timestamps
    end
      
  end
    

  def self.down
  end
end
