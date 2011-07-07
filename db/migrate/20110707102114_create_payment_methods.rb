class CreatePaymentMethods < ActiveRecord::Migration
  def self.up
    create_table :payment_methods do |t|
      t.string :payment_method

      t.timestamps
    end
  end

  def self.down
    drop_table :payment_methods
  end
end
