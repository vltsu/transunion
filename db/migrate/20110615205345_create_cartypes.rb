class CreateCartypes < ActiveRecord::Migration
  def self.up
    create_table :cartypes do |t|
      t.string :cartype

      t.timestamps
    end
  end

  def self.down
    drop_table :cartypes
  end
end
