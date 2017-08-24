class CreateTodo3s < ActiveRecord::Migration[5.1]
  def change
    create_table :todo3s do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
