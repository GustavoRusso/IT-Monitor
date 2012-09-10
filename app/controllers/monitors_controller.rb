class MonitorsController < ApplicationController

  # GET /monitor
  def show
    @monitor_summary = MonitorSummary.find(:first)
    @monitor_summary = MonitorSummary.new(:active_incidents => 0) if @monitor_summary.nil?

    respond_to do |format|
      format.html # show.html.erb
    end
  end

end
