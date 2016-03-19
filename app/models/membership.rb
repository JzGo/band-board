class Membership < ActiveRecord::Base
  belongs_to :member
  belongs_to :band
  validates :member_id, presence: true
  validates :band_id, presence: true
end
