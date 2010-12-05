class CreateClientContactsJoin < ActiveRecord::Migration
  def self.up
    create_table 'client_contacts', :id => false do |t|
      t.column 'client_id', :integer
      t.column 'contact_id', :integer
    
    end
  end

  def self.down
    drop_table 'client_contacts'
  end
end
