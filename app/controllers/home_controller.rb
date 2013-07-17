class HomeController < ApplicationController
  before_filter :authenticate_user!
  def index
    # Time of day counts
    time_counts = {}
    # Day of max count
    max_counts = {}
    # Duration
    durations = {}
    # Pain level
    pain_levels = {}
    # Drug count
    drug_counts = {}
    # Time to dose
    dose_times = {}

    0.upto(23) do |t|
      time_counts[t] = 0
    end

    Attack.where(:user_id => current_user.id).each do |a|
      time_counts[a.started_at.hour] += 1
      date = a.started_at.month.to_s+"/"+a.started_at.mday.to_s
      unless (max_counts[date])
        max_counts[date] = 1
      else
        max_counts[date] += 1
      end
      durations[date] = a.duration
      pain_levels[date] = a.pain_level
    end

    i = 0
    Dosing.where(:user_id => current_user.id).each do |d|
      dname = Drug.find(d.drug_id).name
      dtime = d.dosed_at
      unless (drug_counts[dname])
        drug_counts[dname] = 1
      else
        drug_counts[dname] += 1
      end
      unless (dose_times[dtime])
        dose_times[dtime] = 1
      else
        dose_times[dtime] += 1
      end
      i += 1
    end
     
    gon.time_counts = time_counts
    gon.max_counts = max_counts
    gon.durations = durations
    gon.pain_levels = pain_levels
    gon.drug_counts = drug_counts
    gon.dose_times = dose_times
    gon.dose_count = i
 end
end
