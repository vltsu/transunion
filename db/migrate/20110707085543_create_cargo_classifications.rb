class CreateCargoClassifications < ActiveRecord::Migration
  def self.up
    create_table :cargo_classifications do |t|
      t.string :classification

      t.timestamps
    end
  end

  def self.down
    drop_table :cargo_classifications
  end
end
