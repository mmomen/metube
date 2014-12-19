class Video < ActiveRecord::Base
  validates :title, presence: true
  validates :youtube_id, presence: true
  has_many :comments
  has_many :playlist_videos
  has_many :playlists, through: :playlist_videos
end
