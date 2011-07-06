class CreateCarTonnages < ActiveRecord::Migration
  def self.up
    create_table :car_tonnages do |t|
      t.decimal :car_tonnage, :precision => 5, :scale => 2
      t.timestamps
    end
  end

  def self.down
    drop_table :car_tonnages
  end
end
