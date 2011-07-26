class CreateOutcomeSections < ActiveRecord::Migration
  def self.up
    create_table :outcome_sections do |t|
      t.string :outcome_section

      t.timestamps
    end
  end

  def self.down
    drop_table :outcome_sections
  end
end
