require_relative "../lib/album_repository.rb"

RSpec.describe AlbumRepository do

  def reset_albums_table
    seed_sql = File.read('spec/seeds_albums.sql')
    connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
    connection.exec(seed_sql)
  end

  before(:each) do
    reset_albums_table
  end

  it "returns details of the 1st album" do
    repo = AlbumRepository.new

    albums = repo.all
    expect(albums[0].id).to eq ('1')
    expect(albums[0].title).to eq ('Doolittle')
    expect(albums[0].release_year).to eq ('1989')
    expect(albums[0].artist_id).to eq ('1')

  end

  it "returns the details of only the 1st id record" do
    repo = AlbumRepository.new

    albums = repo.find(1)
    expect(albums.id).to eq ('1')
    expect(albums.title).to eq ('Doolittle')
    expect(albums.release_year).to eq ('1989')
    expect(albums.artist_id).to eq ('1')
  end

  # xit "returns the Pixies as the artist" do
  #   repo = ArtistRepository.new

  #   artist = repo.find(2)
  #   expect(artist.name).to eq 'ABBA'
  #   expect(artist.genre).to eq 'Pop'
  # end
end
