# frozen_string_literal: true
class Room < ApplicationRecord
  belongs_to :studio

  validates :capacity, presence: true, numericality: { only_integer: true, grater_than: 0 }
  validates :price, presence: true, numericality: { only_integer: true, grater_than: 0 }
  validates :speaker, presence: true
  validates :mixer, presence: true
  validates :cd, presence: true
  validates :md, presence: true
  validates :mp3, presence: true
  validates :dimmable, presence: true
  validates :wifi, presence: true

  scope :displayed, -> { where(status: Room.statuses[:active]) }
  scope :by_studio, ->(studio_id) { where(studio_id: studio_id) if studio_id.present?}

  enum status: { inactive: 0, active: 1 }
  enum floor: { 'フローリング': 1, 'リノリウム': 2, 'その他': 99 }
end
