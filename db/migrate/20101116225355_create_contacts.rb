class CreateContacts < ActiveRecord::Migration
  def self.up
    create_table :contacts do |t|
      t.string :Name
      t.integer :Salutation
      t.string :Phone1
      t.string :Phone2
      t.string :Phone3
      t.string :Phone4
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :contacts
  end
end
