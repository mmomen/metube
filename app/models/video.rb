class Video < ActiveRecord::Base
  validates :title, presence: true
  validates :uploader, presence: true
end
