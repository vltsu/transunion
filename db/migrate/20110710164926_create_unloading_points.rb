class CreateUnloadingPoints < ActiveRecord::Migration
  def self.up
    create_table :unloading_points do |t|
      t.timestamp :date
      t.string :time
      t.integer :request_id
      t.string :contact_person
      t.string :phone
      t.integer :point_number
      t.string :address
      t.string :phone_work
      t.string :consignee

      t.timestamps
    end
  end

  def self.down
    drop_table :unloading_points
  end
end
