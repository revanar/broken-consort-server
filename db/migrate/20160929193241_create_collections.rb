class CreateCollections < ActiveRecord::Migration[5.0]
  def change
    create_table :collections do |t|
      t.string :name
      t.string :creator
      t.text :desc
      t.string :thumb_path
      t.string :pdf_path

      t.timestamps
    end
  end
end
