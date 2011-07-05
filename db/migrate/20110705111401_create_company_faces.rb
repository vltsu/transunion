class CreateCompanyFaces < ActiveRecord::Migration
  def self.up
    create_table :company_faces do |t|
      t.string :company_face

      t.timestamps
    end
  end

  def self.down
    drop_table :company_faces
  end
end
