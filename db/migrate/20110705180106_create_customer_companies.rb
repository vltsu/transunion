class CreateCustomerCompanies < ActiveRecord::Migration
  def self.up
    create_table :customer_companies do |t|
      t.string :title
      t.string :legal_address
      t.string :actual_address
      t.integer :opf_id
      t.integer :company_face_id
      t.string :ogrn
      t.string :okpo
      t.string :inn
      t.string :kpp
      t.string :phone
      t.string :fax
      t.string :email
      t.string :current_account
      t.string :bank
      t.string :bank_inn
      t.string :correspondent_account
      t.string :bik
      t.string :operates_basis
      t.string :manager_name
      t.decimal :respons_refuse_loading_day, :precision => 5, :scale => 2
      t.decimal :respons_idle_excessively_hours, :precision => 5, :scale => 2
      t.decimal :respons_idle_excessively_percent, :precision => 5, :scale => 2
      t.decimal :respons_payment_late, :precision => 5, :scale => 2
      t.string  :respons_transport_replacement_req
      t.string  :respons_compensation_for_damage
      t.decimal :respons_undeliver_transport_loading, :precision => 5, :scale => 2
      t.decimal :respons_transport_late_loading_hours, :precision => 5, :scale => 2
      t.decimal :respons_transport_late_loading_percent, :precision => 5, :scale => 2
      t.decimal :respons_transport_late_destination_hours, :precision => 5, :scale => 2
      t.decimal :respons_transport_late_destination_percent, :precision => 5, :scale => 2
      t.decimal :respons_document_late, :precision => 5, :scale => 2
      t.boolean :black_label

      t.timestamps
    end
  end

  def self.down
    drop_table :customer_companies
  end
end
