class Day < ActiveRecord::Base

  def self.this_week
    (last_sunday..last_sunday + 1.week).map do |d|
      where(:day => d).first_or_create
    end
  end

  def self.last_sunday
    Date.today.beginning_of_week(:sunday)
  end

end
