class AddRelationToAddress < ActiveRecord::Migration
  def self.up
    change_table :addresses do |t|
      t.references :addressable, :polymorphic => true
    end
  end

  def self.down
    remove_columns(:addresses, :addressable_id, :addressable_type)
  end
end
