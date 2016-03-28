class Event < ActiveRecord::Base
  validates :title, presence: true
  validates :time, presence: true
end
