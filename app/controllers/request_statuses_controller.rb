class RequestStatusesController < ApplicationController
  # GET /request_statuses
  # GET /request_statuses.json
  def index
    @request_statuses = RequestStatus.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @request_statuses }
    end
  end

  # GET /request_statuses/1
  # GET /request_statuses/1.json
  def show
    @request_status = RequestStatus.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @request_status }
    end
  end

  # GET /request_statuses/new
  # GET /request_statuses/new.json
  def new
    @request_status = RequestStatus.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @request_status }
    end
  end

  # GET /request_statuses/1/edit
  def edit
    @request_status = RequestStatus.find(params[:id])
  end

  # POST /request_statuses
  # POST /request_statuses.json
  def create
    @request_status = RequestStatus.new(params[:request_status])

    respond_to do |format|
      if @request_status.save
        format.html { redirect_to @request_status, :notice => 'Request status was successfully created.' }
        format.json { render :json => @request_status, :status => :created, :location => @request_status }
      else
        format.html { render :action => "new" }
        format.json { render :json => @request_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /request_statuses/1
  # PUT /request_statuses/1.json
  def update
    @request_status = RequestStatus.find(params[:id])

    respond_to do |format|
      if @request_status.update_attributes(params[:request_status])
        format.html { redirect_to @request_status, :notice => 'Request status was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @request_status.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /request_statuses/1
  # DELETE /request_statuses/1.json
  def destroy
    @request_status = RequestStatus.find(params[:id])
    @request_status.destroy

    respond_to do |format|
      format.html { redirect_to request_statuses_url }
      format.json { head :no_content }
    end
  end
end
