class AddComposerRefToSongs < ActiveRecord::Migration[5.0]
  def change
    add_reference :songs, :composer, foreign_key: true
  end
end
