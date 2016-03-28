class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :time, presence: true
  validates :place, presence: true
  validates :event_type, presence: true
end
