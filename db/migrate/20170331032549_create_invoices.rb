class CreateInvoices < ActiveRecord::Migration[5.0]
  def change
    create_table :invoices do |t|
      t.decimal :amount, precision:15, scale: 2, default: 0
      t.string :company
      t.string :contragent
      t.string :currency
      t.date :date
      t.datetime :created_at,   null:false
      t.datetime :updated_at,   null:false
      t.timestamps
    end
  end
end
