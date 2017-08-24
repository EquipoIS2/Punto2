class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :Name
      t.string :lastname
      t.string :subject

      t.timestamps
    end
  end
end
