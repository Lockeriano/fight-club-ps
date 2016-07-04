class CreateSkills < ActiveRecord::Migration[5.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.integer :level
      t.references :fighter, index: true, foreign_key: true

      t.timestamps
    end
  end
end
