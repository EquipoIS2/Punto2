class CreateTodo2s < ActiveRecord::Migration[5.1]
  def change
    create_table :todo2s do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
