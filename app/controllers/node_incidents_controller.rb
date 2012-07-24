class NodeIncidentsController < ApplicationController
  # GET /node_incidents
  # GET /node_incidents.json
  def index
    @node_incidents = NodeIncident.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @node_incidents }
    end
  end

  # GET /node_incidents/1
  # GET /node_incidents/1.json
  def show
    @node_incident = NodeIncident.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @node_incident }
    end
  end

  # GET /node_incidents/new
  # GET /node_incidents/new.json
  def new
    @node_incident = NodeIncident.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @node_incident }
    end
  end

  # GET /node_incidents/1/edit
  def edit
    @node_incident = NodeIncident.find(params[:id])
  end

  # POST /node_incidents
  # POST /node_incidents.json
  def create
    @node_incident = NodeIncident.new(params[:node_incident])

    respond_to do |format|
      if @node_incident.save
        format.html { redirect_to @node_incident, :notice => 'Node incident was successfully created.' }
        format.json { render :json => @node_incident, :status => :created, :location => @node_incident }
      else
        format.html { render :action => "new" }
        format.json { render :json => @node_incident.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /node_incidents/1
  # PUT /node_incidents/1.json
  def update
    @node_incident = NodeIncident.find(params[:id])

    respond_to do |format|
      if @node_incident.update_attributes(params[:node_incident])
        format.html { redirect_to @node_incident, :notice => 'Node incident was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @node_incident.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /node_incidents/1
  # DELETE /node_incidents/1.json
  def destroy
    @node_incident = NodeIncident.find(params[:id])
    @node_incident.destroy

    respond_to do |format|
      format.html { redirect_to node_incidents_url }
      format.json { head :no_content }
    end
  end
end
