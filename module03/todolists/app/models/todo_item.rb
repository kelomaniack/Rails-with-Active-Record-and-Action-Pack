class TodoItem < ActiveRecord::Base

  def self.count_all_todos
    TodoItem.where(completed: true).count
  end

end
