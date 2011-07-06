class CreateCars < ActiveRecord::Migration
  def self.up
    create_table :cars do |t|
      t.integer :car_model_id
      t.integer :car_type_id
      t.integer :car_tonnage_id
      t.string :type
      t.string :year
      t.string :state_number
      t.string :body_state_number
      t.string :body_volume
      t.string :body_pallet
      t.string :body_v_b_z
      t.decimal :dimensions_width, :precision => 5, :scale => 2
      t.decimal :dimensions_length, :precision => 5, :scale => 2
      t.decimal :dimensions_height, :precision => 5, :scale => 2
      t.string :about
      t.boolean :operation_city
      t.boolean :operation_region
      t.boolean :operation_intercity
      t.integer :driver_id
      t.boolean :san_passport

      t.timestamps
    end
  end

  def self.down
    drop_table :cars
  end
end
