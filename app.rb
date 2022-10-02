require_relative 'lib/database_connection.rb'
require_relative 'lib/artist_repository.rb'
require_relative 'lib/album_repository.rb'

DatabaseConnection.connect('music_library')

artist_repository = ArtistRepository.new
album_repository = AlbumRepository.new

# artist_repository.all.each do |artist|
#   p artist
# end

# album_repository.all.each do |album|
#   p album
# end

artist = artist_repository.find(1)
puts artist.name

