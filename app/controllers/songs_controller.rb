class SongsController < ApplicationController
  before_action :set_song, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_artist!, except: [:show, :index, :ranking, :about, :news]

  def index
    @songs = Song.order('id DESC').limit(4)
    @artists = Artist.order('id DESC').limit(4)
    @youtubes = Youtube.order('id DESC').limit(4)
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

  def destroy
    @song.destroy
    redirect_to action: 'index'
  end

  def edit
  end

  def update
    if @song.update(song_params)
      redirect_to action: 'show'
    else
      render :edit
    end
  end

  def show
    impressionist(@song, nil, unique: [:session_hash])
  end

  def ranking
    @songs = Song.order(impressions_count: 'DESC')
  end

  def about
  end

  def news
  end

  private

  def song_params
    params.require(:song).permit(:file, :image, :title, :info, :writer, :composer, :lyric).merge(artist_id: current_artist.id)
  end

  def set_song
    @song = Song.find(params[:id])
  end
end
