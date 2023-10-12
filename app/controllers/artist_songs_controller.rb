class ArtistSongsController < ApplicationController
  def index
    @songs = Artist.find(params[:artist_id]).songs
  end
end