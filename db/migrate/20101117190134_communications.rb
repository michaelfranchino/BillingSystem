class Communications < ActiveRecord::Migration
  def self.up
    create_table :communications do |t|
      t.column :name, :string, :limit => 60, :null => false
    end
    Communication.create :name => "office phone"
    Communication.create :name => "home phone"
    Communication.create :name => "mobile phone"
    Communication.create :name => "fax"
    Communication.create :name => "e-mail"
    
  end

  def self.down
    drop_table :communications
  end
end
