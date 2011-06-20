class CreateCarrierCompanies < ActiveRecord::Migration
  def self.up
    create_table :carrier_companies do |t|
      t.string :title
      t.string :legal_address
      t.string :actual_address
      t.string :company_type
      t.string :ogrn
      t.string :okpo
      t.string :inn
      t.string :kpp
      t.string :phone
      t.string :fax
      t.string :email
      t.string :current_account
      t.string :bank
      t.string :correspondent_account
      t.string :bik
      t.string :operates_basis
      t.string :company_face
      t.string :manager_name
      t.string :respons_refuse_loading_day
      t.string :respons_idle_excessively_hours
      t.string :respons_idle_excessively_percent
      t.string :respons_payment_late
      t.string :respons_transport_replacement_req
      t.string :respons_compensation_for_damage
      t.string :respons_undeliver_transport_loading
      t.string :respons_transport_late_loading_hours
      t.string :respons_transport_late_loading_percent
      t.string :respons_transport_late_destination_hours
      t.string :respons_transport_late_destination_percent
      t.string :respons_document_late
      t.boolean :black_label

      t.timestamps
    end
  end

  def self.down
    drop_table :carrier_companies
  end
end
