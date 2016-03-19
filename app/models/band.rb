class Band < ActiveRecord::Base

  validates :name, presence: true

  has_many :member_through, class_name: 'Membership', foreign_key: :band_id, dependent: :destroy
  has_many :members, through: :member_through, source: :member
end
