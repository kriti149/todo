class AddDueDateToTodoItems < ActiveRecord::Migration[6.0]
  def change
    add_column :todo_items, :due_date, :string
  end
end
