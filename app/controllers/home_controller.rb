class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    # Time of day counts
    time_counts = {}
    # Day of max count
    max_counts = {}

    0.upto(23) do |t|
      time_counts[t] = 0
    end

    Attack.where(:user_id => current_user.id).each do |a|
      time_counts[a.started_at.hour] += 1
    end
    gon.time_counts = time_counts

 end
end
