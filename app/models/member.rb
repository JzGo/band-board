class Member < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :memberid, presence: true, uniqueness: true

  has_many :band_through, class_name: 'Membership', foreign_key: :member_id, dependent: :destroy
  has_many :bands, through: :band_through, source: :band
end
