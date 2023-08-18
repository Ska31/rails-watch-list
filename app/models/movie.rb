require "open-uri"
require "json"

class Movie < ApplicationRecord
  has_many :bookmarks
  validates :title, presence: true, uniqueness: true
  validates :overview, presence: true

  def get_poster
    url = http://tmdb.lewagon.com/movie/top_rated?
    user_serialized = URI.open(url).read
    user = JSON.parse(user_serialized)
  end
end
