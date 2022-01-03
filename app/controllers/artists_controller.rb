class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs.order('id DESC')
    @youtubes = @artist.youtubes.order('id DESC')
    impressionist(@artist, nil, unique: [:session_hash])
  end

  def search
    if params[:q]&.dig(:name)
      squished_keywords = params[:q][:name].squish
      params[:q][:name_cont_any] = squished_keywords.split(' ')
    end
    @q = Artist.ransack(params[:q])
    @artists = @q.result
  end

  def ranking
    @artists = Artist.order(impressions_count: 'DESC')
  end
end
