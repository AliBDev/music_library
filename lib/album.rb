class Album
  def initialize(id = 0, title = "", release_year = 0, artist_id = 0)
    @id, @title, @release_year, @artist_id = id, title, release_year, artist_id
  end
  attr_accessor :id, :title, :release_year, :artist_id
end