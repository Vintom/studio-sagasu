# frozen_string_literal: true
class Room < ApplicationRecord
  belongs_to :studio

  validates :capacity, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :price, presence: true, numericality: { only_integer: true, greater_than: 0 }

  scope :displayed, -> { where(status: Room.statuses[:active]) }
  scope :by_studio, ->(studio_id) { where(studio_id: studio_id) if studio_id.present?}
  scope :by_status, ->(status) { where(status: status)}
  scope :by_last_week_status, ->(last_week_status) { where(last_week_status: last_week_status)}

  enum status: { inactive: 0, active: 1, reviewing: 2 }
  enum floor: { 'フローリング': 1, 'リノリウム': 2, 'その他': 99 }
end
