class AddFieldToInvoices < ActiveRecord::Migration
  def self.up
    add_column :invoices, :comment, :text
  end

  def self.down
    remove_column :invoices, :comment
  end
end
