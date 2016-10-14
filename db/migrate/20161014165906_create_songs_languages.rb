class CreateSongsLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages_songs, id: false do |t|
      t.belongs_to :song, foreign_key: true
      t.belongs_to :language, foreign_key: true
    end
  end
end
