class Token < ApplicationRecord
  validates :uid, :presence => true,
            :uniqueness => {:case_sensitive => true}
  validates :email, :presence => true,
            :uniqueness => {:case_sensitive => true}
  before_create :set_uid

  private
  def set_uid
    self.uid = SecureRandom.urlsafe_base64(nil,true);
  end
end
