class AddLanguageRefToSongs < ActiveRecord::Migration[5.0]
  def change
    add_reference :songs, :language, foreign_key: true
  end
end
