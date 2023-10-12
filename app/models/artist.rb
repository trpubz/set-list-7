class Artist < ApplicationRecord
  has_many :songs
  belongs_to :record_label

  def average_song_length
    self.songs.average(:length)
  end

  def song_count
    songs.count
  end

  def wrote_song?(song)
    songs.include?(song)
  end
end
