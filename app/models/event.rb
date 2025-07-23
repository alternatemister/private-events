class Event < ApplicationRecord
  belongs_to :creator, foreign_key: "creator_id", class_name: "User"

  def self.past
    where("date < ?", Date.today).order(date: :desc)
  end

  def self.upcoming
    where("date >= ?", Date.today).order(:date)
  end

  scope :past, -> { where("date < ?", Date.today).order(date: :desc) }
  scope :upcoming, -> { where("date >= ?", Date.today).order(:date) }

  has_many :attendances, foreign_key: :attended_event_id
  has_many :attendees, through: :attendances, source: :attendee
end
