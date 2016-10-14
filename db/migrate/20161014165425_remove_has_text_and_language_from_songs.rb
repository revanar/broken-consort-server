class RemoveHasTextAndLanguageFromSongs < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :has_text, :boolean
    remove_reference :songs, :language
  end
end
