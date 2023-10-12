class SongsController < ApplicationController
  before_action :all_songs
  def index
    @songs
  end

  def show
    @song = Song.find(params[:id])
  end

  def all_songs
    @songs = Song.all
  end

end