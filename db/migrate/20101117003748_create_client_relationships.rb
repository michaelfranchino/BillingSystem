class CreateClientRelationships < ActiveRecord::Migration
  def self.up
    create_table :client_relationships do |t|
      t.integer :client_id
      t.integer :contact_id
      t.integer :position
      t.timestamps
    end
  end

  def self.down
    drop_table :client_relationships
  end
end
