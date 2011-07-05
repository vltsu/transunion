class CreateOpfs < ActiveRecord::Migration
  def self.up
    create_table :opfs do |t|
      t.string :opf

      t.timestamps
    end
  end

  def self.down
    drop_table :opfs
  end
end
