require_relative "album.rb"

class AlbumRepository
  def all
    sql = 'SELECT id, title, release_year, artist_id FROM albums;'
    result_set = DatabaseConnection.exec_params(sql)

    albums = result_set.map do |record|
      album = Album.new(record['id'], record['title'], record['release_year'], record['artist_id'])
    end

  return albums
  end

    def find(id)
      sql = 'SELECT id, title, release_year, artist_id FROM albums WHERE id = $1;'
      sql_params = [id]

      result_set = DatabaseConnection.exec_params(sql, sql_params)

      record = result_set[0]

        album = Album.new
        album.id = record['id']
        album.title = record['title']
        album.release_year = record['release_year']
        album.artist_id = record['artist_id']

      return album
    end
end