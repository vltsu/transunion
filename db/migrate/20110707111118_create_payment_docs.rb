class CreatePaymentDocs < ActiveRecord::Migration
  def self.up
    create_table :payment_docs do |t|
      t.string :payment_doc

      t.timestamps
    end
  end

  def self.down
    drop_table :payment_docs
  end
end
