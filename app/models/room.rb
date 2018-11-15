# frozen_string_literal: true
class Room < ApplicationRecord
  belongs_to :studio

  scope :displayed, -> { where(status: Room.statuses[:active]) }
  scope :by_studio, ->(studio_id) { where(studio_id: studio_id) if studio_id.present?}

  enum status: { inactive: 0, active: 1 }
  enum floor: { 'フローリング': 1, 'リノリウム': 2, 'その他': 99 }

  validates :capacity, presence: true
end
