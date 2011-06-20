class CreateDrivers < ActiveRecord::Migration
  def self.up
    create_table :drivers do |t|
      t.string :lastname
      t.string :firstname
      t.string :middlename
      t.string :region
      t.string :city
      t.string :district
      t.string :street
      t.string :type
      t.string :house
      t.string :housing
      t.string :apartment
      t.string :mobile_phone
      t.string :email
      t.string :home_phone
      t.string :passport_series
      t.string :passport_number
      t.date :passport_issue_date
      t.string :passport_issue_whom
      t.integer :carrier_company_id
      t.string :citizenship
      t.date :date_of_birth
      t.string :about
      t.boolean :med_book

      t.timestamps
    end
  end

  def self.down
    drop_table :drivers
  end
end
