#app/models/album.rb
class Album < ApplicationRecord
  has_many :tracks
  
  scope :published, -> { where.not(released_at: nil)}
  
  #Same-same scope
  #def self.published
  #  return Album.where.not(released_at: nil)
  #end
  
  def youhouuu_new_visit
    self.increment!(:views_count)
  end
  
end
