class SongsController < ApplicationController
  before_action :set_song, only: [:edit, :show, :update]

  def index
    @songs = Song.all
  end

  def new
    @song = Song.new
  end

  def create
    @song = Song.new(song_params)
    if @song.save
      redirect_to root_path
    else
      render :new
    end
  end

  def destory
    song = Song.find(params[:id])
    song.destory
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to action: "show"
    else
      render :edit
    end
  end

  def show
  end

  private

  def song_params
    params.require(:song).permit(:image, :title, :info, :writer, :composer, :lyric).merge(artist_id: current_artist.id)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
