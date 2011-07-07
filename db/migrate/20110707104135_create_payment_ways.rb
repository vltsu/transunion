class CreatePaymentWays < ActiveRecord::Migration
  def self.up
    create_table :payment_ways do |t|
      t.string :payment_way

      t.timestamps
    end
  end

  def self.down
    drop_table :payment_ways
  end
end
