class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :song_no
      t.integer :parts_no
      t.boolean :has_text
      t.boolean :is_transcribed
      t.string :pdf_path

      t.timestamps
    end
  end
end
