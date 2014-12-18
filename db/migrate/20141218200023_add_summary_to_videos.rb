class AddSummaryToVideos < ActiveRecord::Migration
  def change
    add_column :videos, :summary, :string
  end
end
