class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new

  end

  def show
    @video = Video.find(params[:id])
  end

  def create
    test_logic = /([A-Z]\w+)/
    params[:video][:youtube_id] = test_logic.match(params[:video][:youtube_id])[1]
    @video = Video.create(video_params)
    redirect_to action: 'index'
  end

  def edit

  end

  def update
    @video = Video.update(params)
  end

  def destroy
    @video = Video.delete(params[:id])
  end

  private
  def video_params
    params.require(:video).permit(:title, :youtube_id, :uploader, :summary)
  end
end