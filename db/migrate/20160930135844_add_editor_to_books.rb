class AddEditorToBooks < ActiveRecord::Migration[5.0]
  def change
    add_reference :books, :editor, foreign_key: true
  end
end
