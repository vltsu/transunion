class CreateFinances < ActiveRecord::Migration
  def self.up
    create_table :finances do |t|
      t.string   :glob_type
      t.string   :local_type
      t.datetime :date
      t.decimal  :summ, :precision => 10, :scale => 2
      t.text     :description
      t.integer  :request_id
      t.integer  :bill_id
      t.integer  :income_section_id
      t.integer  :expenditure_id
      t.string   :payment_way
      t.integer  :salary_person_id
      t.string   :carrier_beznal_way

      t.timestamps
    end
  end

  def self.down
    drop_table :finances
  end
end
