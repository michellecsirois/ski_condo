class DaysController < ApplicationController
  def index
    @days = Day.week_for(offset)
  end

  private

  helper_method :offset

  def offset
    params[:offset].to_i || 0
  end
end
