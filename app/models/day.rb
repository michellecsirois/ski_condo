class Day < ActiveRecord::Base

  has_many :visits
  has_many :users, :through => :visits

  def self.this_week
    (last_sunday..last_sunday + 1.week).map do |d|
      where(:day => d).first_or_create
    end
  end

  def self.last_sunday
    Date.today.beginning_of_week(:sunday)
  end

  def to_s
    day.strftime("%A %b %-d")
  end

  def already_has?(user)
    users.include?(user)
  end

end
