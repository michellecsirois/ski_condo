class Day < ActiveRecord::Base

  has_many :visits
  has_many :users, :through => :visits

  def self.week_for(offset)
    monday = Date.today.beginning_of_week + offset.weeks

    (monday..monday + 6.days).map do |d|
      where(:day => d).first_or_create
    end
  end

  def self.sunday(offset)
     + offset.weeks
  end

  def to_s
    day.strftime("%A %b %-d")
  end

  def already_has?(user)
    users.include?(user)
  end

end
