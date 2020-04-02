class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    Genre.first  
  end

  def song_count
    Song.count
  end

  def genre_count
    #return the number of genres associated with the artist
  end
end
