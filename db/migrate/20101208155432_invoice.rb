class Invoice < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.date :invoice_date
      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
