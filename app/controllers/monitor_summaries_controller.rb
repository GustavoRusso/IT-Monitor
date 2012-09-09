class MonitorSummariesController < ApplicationController
  # GET /monitor_summaries
  # GET /monitor_summaries.json
  def index
    @monitor_summaries = MonitorSummary.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @monitor_summaries }
    end
  end

  # GET /monitor_summaries/1
  # GET /monitor_summaries/1.json
  def show
    @monitor_summary = MonitorSummary.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @monitor_summary }
    end
  end

  # GET /monitor_summaries/new
  # GET /monitor_summaries/new.json
  def new
    @monitor_summary = MonitorSummary.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @monitor_summary }
    end
  end

  # GET /monitor_summaries/1/edit
  def edit
    @monitor_summary = MonitorSummary.find(params[:id])
  end

  # POST /monitor_summaries
  # POST /monitor_summaries.json
  def create
    @monitor_summary = MonitorSummary.new(params[:monitor_summary])

    respond_to do |format|
      if @monitor_summary.save
        format.html { redirect_to @monitor_summary, notice: 'Monitor summary was successfully created.' }
        format.json { render json: @monitor_summary, status: :created, location: @monitor_summary }
      else
        format.html { render action: "new" }
        format.json { render json: @monitor_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /monitor_summaries/1
  # PUT /monitor_summaries/1.json
  def update
    @monitor_summary = MonitorSummary.find(params[:id])

    respond_to do |format|
      if @monitor_summary.update_attributes(params[:monitor_summary])
        format.html { redirect_to @monitor_summary, notice: 'Monitor summary was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @monitor_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /monitor_summaries/1
  # DELETE /monitor_summaries/1.json
  def destroy
    @monitor_summary = MonitorSummary.find(params[:id])
    @monitor_summary.destroy

    respond_to do |format|
      format.html { redirect_to monitor_summaries_url }
      format.json { head :no_content }
    end
  end
end
