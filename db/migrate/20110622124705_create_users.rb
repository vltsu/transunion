class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :lastname
      t.string :firstname
      t.string :middlename
      t.string :city
      t.string :district
      t.string :street
      t.string :house
      t.string :housing
      t.string :apartment
      t.string :mobile_phone_business
      t.string :mobile_phone_personal
      t.string :email
      t.string :icq
      t.string :skype
      t.string :home_phone
      t.string :passport_series
      t.datetime :passport_issue_date
      t.string :passport_issue_whom
      t.string :passport_address
      t.string :citizenship
      t.datetime :date_of_birth
      t.string :about
      t.integer :position
      t.decimal :salary
      t.decimal :premium_percent
      t.decimal :request_percent
      t.string :global_experience
      t.string :unbroken_experience
      t.string :visluga_let
      t.string :university
      t.string :speciality
      t.string :inn
      t.string :pensionnoe
      t.string :medical_insurance
      t.string :working_contract
      t.integer :role
      t.string :login
      t.string :password_salt
      t.string :password_hash

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
