class CreatePlaylistVideos < ActiveRecord::Migration
  def change
    create_table :playlist_videos do |t|
      t.references :video
      t.references :playlist
      t.timestamps
    end
  end
end
