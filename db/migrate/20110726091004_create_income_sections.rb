class CreateIncomeSections < ActiveRecord::Migration
  def self.up
    create_table :income_sections do |t|
      t.string :income_section

      t.timestamps
    end
  end

  def self.down
    drop_table :income_sections
  end
end
