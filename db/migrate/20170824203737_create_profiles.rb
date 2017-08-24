class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :Name
      t.text :Descrption
      t.integer :Age

      t.timestamps
    end
  end
end
