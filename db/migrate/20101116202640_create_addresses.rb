class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.integer :id
      t.string :Name
      t.string :Address
      t.string :City
      t.string :State
      t.string :Postal_code
      t.string :Country
      t.string :Street

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
