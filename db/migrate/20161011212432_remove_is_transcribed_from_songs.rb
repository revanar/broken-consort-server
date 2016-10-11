class RemoveIsTranscribedFromSongs < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :is_transcribed, :boolean
  end
end
