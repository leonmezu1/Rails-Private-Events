# frozen_string_literal: true

# Event model
class Event < ApplicationRecord
  belongs_to :user
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user
  scope :past,     -> { where('event_date < :current_time', current_time: DateTime.now) }
  scope :upcoming, -> { where('event_date >= :current_time', current_time: DateTime.now) }
end
