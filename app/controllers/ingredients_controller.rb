class IngredientsController < ApplicationController
  autocomplete :food, :name, :full => true
  # GET /ingredients
  # GET /ingredients.xml
  def index
    @title = "No Title"
    @header = "No Header"
    @navigation = "Ingredients"
    @ingredients = Ingredient.all

    respond_to do |format|
      format.html # index-original.html.erb
      format.xml  { render :xml => @ingredients }
    end
  end

  # GET /ingredients/1
  # GET /ingredients/1.xml
  def show
    @title = "No Title"
    @header = "No Header"
    @ingredient = Ingredient.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ingredient }
    end
  end

  # GET /ingredients/new
  # GET /ingredients/new.xml
  def new
    @title = "No Title"
    @header = "No Header"
    @ingredient = Ingredient.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ingredient }
    end
  end

  # GET /ingredients/1/edit
  def edit
    @title = "No Title"
    @header = "No Header"
    @ingredient = Ingredient.find(params[:id])
  end

  # POST /ingredients
  # POST /ingredients.xml
  def create
    @title = "No Title"
    @header = "No Header"
    @ingredient = Ingredient.new(params[:ingredient])

    respond_to do |format|
      if @ingredient.save
        format.html { redirect_to(@ingredient, :notice => 'Ingredient was successfully created.') }
        format.xml  { render :xml => @ingredient, :status => :created, :location => @ingredient }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ingredient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /ingredients/1
  # PUT /ingredients/1.xml
  def update
    @title = "No Title"
    @header = "No Header"
    @ingredient = Ingredient.find(params[:id])

    respond_to do |format|
      if @ingredient.update_attributes(params[:ingredient])
        format.html { redirect_to(@ingredient, :notice => 'Ingredient was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ingredient.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /ingredients/1
  # DELETE /ingredients/1.xml
  def destroy
    @title = "No Title"
    @header = "No Header"
    @ingredient = Ingredient.find(params[:id])
    @ingredient.destroy

    respond_to do |format|
      format.html { redirect_to(ingredients_url) }
      format.xml  { head :ok }
    end
  end
end
