class DaysController < ApplicationController
  def index
    @days = Day.this_week
  end
end
