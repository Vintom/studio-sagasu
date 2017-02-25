# frozen_string_literal: true
class Studio < ApplicationRecord
  include FriendlyId
  friendly_id :slug

  # belongs_to :account
  belongs_to :area
  has_many :rooms

  scope :displayed, -> { where(status: Studio.statuses[:active]) }
  scope :by_area, ->(area) { where(area_id: area) if area.present? }
  scope :by_people, lambda { |people|
    array = select do |s|
      case people
      when 1..2
        (people * 5).between?(s.min_capacity, s.max_capacity)
      when 3..4
        (people * 10 - 10).between?(s.min_capacity, s.max_capacity)
      when 5
        s.max_capacity > 30
      else
        true
      end
    end
    Studio.where(id: array.map(&:id))
  }
  scope :by_late_night, ->(late_night) { where(late_night: late_night) if late_night.present? }
  scope :by_locker_room, ->(locker_room) { where(locker_room: locker_room) if locker_room.present? }
  scope :by_parking, ->(parking) { where(parking: parking) if parking.present? }
  scope :order_by_room_count, lambda {
    ids = joins(:rooms).group(:id).order('count_studios_id desc').count('studios.id').keys
    Studio.where(id: ids).order(['field(id, ?)', ids])
  }

  enum status: { inactive: 0, active: 1 }

  def max_capacity
    rooms.maximum(:capacity)
  end

  def min_capacity
    rooms.minimum(:capacity)
  end
end
