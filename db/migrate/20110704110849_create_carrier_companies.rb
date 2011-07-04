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
      t.decimal :respons_refuse_loading_day, :precision => 5, :scale => 2
      t.string :respons_idle_excessively_hours, :precision => 5, :scale => 2
      t.string :respons_idle_excessively_percent, :precision => 5, :scale => 2
      t.string :respons_payment_late, :precision => 5, :scale => 2
      t.string :respons_transport_replacement_req
      t.string :respons_compensation_for_damage
      t.string :respons_undeliver_transport_loading, :precision => 5, :scale => 2
      t.string :respons_transport_late_loading_hours, :precision => 5, :scale => 2
      t.string :respons_transport_late_loading_percent, :precision => 5, :scale => 2
      t.string :respons_transport_late_destination_hours, :precision => 5, :scale => 2
      t.string :response_transport_late_destination_percent, :precision => 5, :scale => 2
      t.string :respons_document_late, :precision => 5, :scale => 2
      t.boolean :black_label

      t.timestamps
    end
  end

  def self.down
    drop_table :carrier_companies
  end
end
