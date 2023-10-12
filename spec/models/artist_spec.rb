require "rails_helper"

RSpec.describe Artist do
  it {should have_many :songs}

  describe "instance methods" do
    before(:each) do
      @prince = Artist.create!(name: "Prince")
      @purple = @prince.songs.create!(title: "Purple Rains", length: 324, play_count: 24)
      @beret = @prince.songs.create!(title: "Beret", length: 324, play_count: 93)
    end
    describe "#average_song_length" do


      it "returns the avg song length" do
        expect(@prince.average_song_length.round(2)).to eq 324
      end
    end
  end
end