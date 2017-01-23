#app/models/track.rb
class Track < ApplicationRecord
  belongs_to :album
end
