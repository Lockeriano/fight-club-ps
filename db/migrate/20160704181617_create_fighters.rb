class CreateFighters < ActiveRecord::Migration[5.0]
  def change
    create_table :fighters do |t|
      t.string :first_name
      t.string :last_name
      t.text :description

      t.timestamps
    end
  end
end
