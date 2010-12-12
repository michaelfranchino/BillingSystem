class AddFieldsToContact < ActiveRecord::Migration
  def self.up
    remove_column(:contacts, :contactable, :contactable_type)
    change_table :contacts do |t|
      t.references :contactable, :polymorphic => true
    end
  end

  def self.down
    remove_columns(:contacts, :contactable_id, :contactable_type)
  end
end
