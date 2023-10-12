class RecordLabel < ApplicationRecord
  has_many :artists
  has_many :songs, through: :artists

  def artist_songs(a_id)
    artists.find(a_id).songs
  end

end
