require "rails_helper"

RSpec.describe "Artists songs index" do
  before(:each) do
    @prince = Artist.create!(name: "Prince")
    @purple = @prince.songs.create!(title: "Purple Rains", length: 324, play_count: 24)
    @beret = @prince.songs.create!(title: "Beret", length: 324, play_count: 93)
  end
  it 'shows all the titles of the songs for the artist' do

    visit "/artists/#{@prince.id}/songs"

    expect(page).to have_content @purple.title
    expect(page).to have_content @beret.title
  end

  it "links to each songs show page" do
    visit "/artists/#{@prince.id}/songs"

    click_on @purple.title

    expect(current_path).to eq "/songs/#{@purple.id}"
  end
end