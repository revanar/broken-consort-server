class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.string :abbr
      t.integer :year
      t.string :thumb_path
      t.string :pdf_path

      t.timestamps
    end
  end
end
