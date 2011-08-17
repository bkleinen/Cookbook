class FoodsController < ApplicationController
  # GET /foods
  # GET /foods.xml
  def index
    @title = "No Title"
    @header = "No Header"
    @navigation = "Foods"
    @foods = Food.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @foods }
    end
  end

  # GET /foods/1
  # GET /foods/1.xml
  def show
    @title = "No Title"
    @header = "No Header"
    @food = Food.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @food }
    end
  end

  # GET /foods/new
  # GET /foods/new.xml
  def new
    @title = "No Title"
    @header = "No Header"
    @food = Food.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @food }
    end
  end

  # GET /foods/1/edit
  def edit
    @title = "No Title"
    @header = "No Header"
    @food = Food.find(params[:id])
  end

  # POST /foods
  # POST /foods.xml
  def create
    @title = "No Title"
    @header = "No Header"
    @food = Food.new(params[:food])

    respond_to do |format|
      if @food.save
        format.html { redirect_to(@food, :notice => 'Food was successfully created.') }
        format.xml  { render :xml => @food, :status => :created, :location => @food }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @food.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /foods/1
  # PUT /foods/1.xml
  def update
    @title = "No Title"
    @header = "No Header"
    @food = Food.find(params[:id])

    respond_to do |format|
      if @food.update_attributes(params[:food])
        format.html { redirect_to(@food, :notice => 'Food was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @food.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /foods/1
  # DELETE /foods/1.xml
  def destroy
    @title = "No Title"
    @header = "No Header"
    @food = Food.find(params[:id])
    @food.destroy

    respond_to do |format|
      format.html { redirect_to(foods_url) }
      format.xml  { head :ok }
    end
  end
end
