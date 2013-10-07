class Visit < ActiveRecord::Base

  belongs_to :visit
  belongs_to :user

  def to_s
    user.name
  end

end
