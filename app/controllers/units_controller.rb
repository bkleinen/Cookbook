class UnitsController < ApplicationController
  # GET /units
  # GET /units.xml
  def index
    @title = "No Title"
    @header = "No Header"
    @units = Unit.all

    respond_to do |format|
      format.html # index-original.html.erb
      format.xml  { render :xml => @units }
    end
  end

  # GET /units/1
  # GET /units/1.xml
  def show
    @title = "No Title"
    @header = "No Header"
    @unit = Unit.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @unit }
    end
  end

  # GET /units/new
  # GET /units/new.xml
  def new
    @title = "No Title"
    @header = "No Header"
    @unit = Unit.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @unit }
    end
  end

  # GET /units/1/edit
  def edit
    @title = "No Title"
    @header = "No Header"
    @unit = Unit.find(params[:id])
  end

  # POST /units
  # POST /units.xml
  def create
    @title = "No Title"
    @header = "No Header"
    @unit = Unit.new(params[:unit])

    respond_to do |format|
      if @unit.save
        format.html { redirect_to(@unit, :notice => 'Unit was successfully created.') }
        format.xml  { render :xml => @unit, :status => :created, :location => @unit }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /units/1
  # PUT /units/1.xml
  def update
    @title = "No Title"
    @header = "No Header"
    @unit = Unit.find(params[:id])

    respond_to do |format|
      if @unit.update_attributes(params[:unit])
        format.html { redirect_to(@unit, :notice => 'Unit was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @unit.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /units/1
  # DELETE /units/1.xml
  def destroy
    @title = "No Title"
    @header = "No Header"
    @unit = Unit.find(params[:id])
    @unit.destroy

    respond_to do |format|
      format.html { redirect_to(units_url) }
      format.xml  { head :ok }
    end
  end
end
