class ChangeAddressField < ActiveRecord::Migration
    def self.up
        create_table :addresses  do |t|
            t.string   :name,        :limit => 60, :null => false
            t.string   :city,        :limit => 60, :null => false
            t.references :state
            t.references :country,     :null => false
            t.string   :postal_code, :limit => 10
            t.text     :street
            t.timestamps
        end
    end

    def self.down
        drop_table :addresses
    end
end
