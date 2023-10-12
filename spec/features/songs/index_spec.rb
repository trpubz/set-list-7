require 'rails_helper'

RSpec.describe "Songs Index", type: :feature do
  describe "As a user" do
    describe "when I visit '/songs'" do
      xit "shows each song's title and play count" do
        song1 = Song.create(title: "purple rain", length: 567, play_count: 1234)
        song2 = Song.create(title: "kiss", length: 587, play_count: 134566)

        visit "/songs"

        expect(page).to have_content("All Songs")
        expect(page).to have_content song1.title
        expect(page).to have_content "Play Count: #{song1.play_count}"
      end

      it "allows nav to specific song instance" do
        artist = Artist.create(name:"Santana")
        song1 = artist.songs.create!(title: "purple rain", length: 567, play_count: 1234)

        visit "/songs"
        expect(page).to have_content "All Songs"
      end
    end
  end
end
