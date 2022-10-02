1. Design and create the Table

2. Create Test SQL seeds

TRUNCATE TABLE artists RESTART IDENTITY;

INSERT INTO artists (name, genre) VALUES('Pixies', 'Rock');
INSERT INTO artists (name, genre) VALUES('ABBA', 'Pop');


3. Define the class names

#Model class
class Artist
end

#repositoryclass
class ArtistRepository
end



4. Implement the Model class

class Artist
  attr_accessor :id, :name, :genre
end


5. Define the Repository Class interface

class ArtistRepository
  def all
    #SELECT id, name, genre FROM artists;
    #returns array of Artist objects
  end
end

class AlbumRepository
  def all
    #SELECT id, name, genre FROM artists;
    #returns array of Artist objects
  end
end

6. Write Test Examples

#get all students

repo = ArtistRepository.new

artists = repo.all
artists.length # => 2
artists.first.id # => '1'
artists.find.name # => 'Pixies'

artists




7. Reload the SQL seeds before each test run


8. Test-drive and implement the Repository class behaviour