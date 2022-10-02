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

# Select a single record, given the id ni argument (number)
  def find(id)
    # SELECT id, name, genre FROM artists WHERE id = $1

    # Returns a single artist
  end
end


6. Write Test Examples

#1
#get all artists

repo = ArtistRepository.new

artists = repo.all
artists.length # => 2
artists.first.id # => '1'
artists.find.name # => 'Pixies'

artists

# 2
# Get a single artist

repo = ArtistRepository.new

artist = repo.find(1)
artist.name # => 'Pixies'
artist.genre # => 'Rock'


# 3
# Get another single artist

repo = ArtistRepository.new

artist = repo.find(2)
artist.name # => 'ABBA'
artist.genre # => 'Pop'

7. Reload the SQL seeds before each test run


8. Test-drive and implement the Repository class behaviour