class CreateLoadingPoints < ActiveRecord::Migration
  def self.up
    create_table :loading_points do |t|
      t.timestamp :date
      t.string :time
      t.integer :request_id
      t.string :contact_person
      t.string :phone
      t.integer :point_number
      t.string :adress
      t.string :phone_work
      t.string :shipper

      t.timestamps
    end
  end

  def self.down
    drop_table :loading_points
  end
end
