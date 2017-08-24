class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :Name
      t.string :lastname
      t.string :career

      t.timestamps
    end
  end
end
