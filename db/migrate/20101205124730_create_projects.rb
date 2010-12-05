class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.integer     :parent_id
      t.string      :name,         :null => false, :limit => 60
      t.text        :description  
      t.string      :type,         :null => false, :limit => 5
      t.integer     :status,       :null => false
      
      t.references  :client

      t.string      :reference,    :limit => 20

      t.date        :planned_start_date
      t.date        :actual_start_date
      t.date        :planned_end_date
      t.date        :actual_end_date

      t.timestamps
    end
    
    add_index :projects, [:client_id, :id], :name => "by_client_id", :unique => true
	  add_index :projects, [:planned_start_date, :id], :name => "by_planned_start_date", :unique => true  
  
  end

  def self.down
		remove_index :projects, :name => :by_planned_start_date
		remove_index :projects, :name => :by_client_id
		
    drop_table :projects
  end
end
