class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    Song.count  
  end

  def artist_count
    Artist.count 
  end

  def all_artist_names
    self.artists.map do |artist| #return string of artist names 
      artist.name
    end 
  end
  
end
