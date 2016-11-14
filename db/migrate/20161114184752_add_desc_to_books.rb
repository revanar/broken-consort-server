class AddDescToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :desc, :string
    remove_column :books, :abbr, :string
  end
end
