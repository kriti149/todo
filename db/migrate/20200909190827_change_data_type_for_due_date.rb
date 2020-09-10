class ChangeDataTypeForDueDate < ActiveRecord::Migration[6.0]
  def change
  	change_column :todo_items, :due_date, :datetime
  end
end
