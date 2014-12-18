class RenameBodyColumnToYoutubeIdInVideo < ActiveRecord::Migration
  def change
    rename_column :videos, :body, :youtube_id
  end
end
