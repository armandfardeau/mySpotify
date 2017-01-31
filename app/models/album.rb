#app/models/album.rb
class Album < ApplicationRecord
  has_many :tracks
  
  scope :published, -> { where.not(released_at: nil)}

  def as_json(options = {})
    return {
        id: self.id,
        title: self.title,
        views_count: self.views_count,
    }
  end
  #Same-same scope
  #def self.published
  #  return Album.where.not(released_at: nil)
  #end
  
  def youhouuu_new_visit
    self.increment!(:views_count)
  end
  
end
