class AddEvaluationToBooks < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :evaluation, :float
  end
end
