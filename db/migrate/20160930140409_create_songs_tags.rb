class CreateSongsTags < ActiveRecord::Migration[5.0]
  def change
    create_table :songs_tags, id: false do |t|
      t.belongs_to :song, foreign_key: true
      t.belongs_to :tag, foreign_key: true
    end
  end
end
