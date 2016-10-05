class AddBookToSongs < ActiveRecord::Migration[5.0]
  def change
    add_reference :songs, :book, foreign_key: true
  end
end
