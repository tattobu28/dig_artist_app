class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs.order('id DESC')
  end
end
