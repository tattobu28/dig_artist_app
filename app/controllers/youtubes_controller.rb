class YoutubesController < ApplicationController
  before_action :set_youtube, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_artist!, except: [:show, :index, :ranking]

  def new
    @youtube = Youtube.new
  end

  def create
    @youtube = Youtube.new(youtube_params)
    url = params[:youtube][:url]
    url = url.last(11)
    @youtube.url = url
    if @youtube.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @youtube.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    if @youtube.update(youtube_params)
      redirect_to action: 'show'
    else
      render :edit
    end
  end

  def show
    impressionist(@youtube, nil, unique: [:session_hash])
  end

  def ranking
    @youtubes = Youtube.order(impressions_count: 'DESC')
  end

  private

  def youtube_params
    params.require(:youtube).permit(:url, :title, :info, :writer, :composer, :lyric).merge(artist_id: current_artist.id)
  end

  def set_youtube
    @youtube = Youtube.find(params[:id])
  end
end
