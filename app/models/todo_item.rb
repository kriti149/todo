class TodoItem < ApplicationRecord
  belongs_to :todo_list
  validates :content, presence: true,
                    length: { minimum: 3 }
  validates :due_date, presence: true
  validates :priority, presence: true,
                    :numericality => { :only_integer => true, :greater_than_or_equal_to => 0, :less_than_or_equal_to => 5 }

  def completed?
    !completed_at.blank?
  end
end
