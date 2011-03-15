class LandlordsController < ApplicationController
  # GET /landlords
  # GET /landlords.xml
  before_filter :authenticate
  helper_method :sort_column, :sort_direction  
  
  def index
    @landlords = Landlord.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:page => params[:page])
    @landlord_count = Landlord.count  
  end

  # GET /landlords/1 
  # GET /landlords/1.xml
  def show
    @landlord = Landlord.find(params[:id])
    @landlord_count = Landlord.count
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @landlord }
    end
  end

  # GET /landlords/new
  # GET /landlords/new.xml
  def new
    @landlord = Landlord.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @landlord }
    end
  end

  # GET /landlords/1/edit
  def edit
    @landlord = Landlord.find(params[:id])
  end

  # POST /landlords
  # POST /landlords.xml
  def create
    @landlord = Landlord.new(params[:landlord])

    respond_to do |format|
      if @landlord.save
        format.html { redirect_to(@landlord, :notice => 'Landlord was successfully created.') }
        format.xml  { render :xml => @landlord, :status => :created, :location => @landlord }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @landlord.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /landlords/1
  # PUT /landlords/1.xml
  def update
    @landlord = Landlord.find(params[:id])

    respond_to do |format|
      if @landlord.update_attributes(params[:landlord])
        format.html { redirect_to(@landlord, :notice => 'Landlord was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @landlord.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /landlords/1
  # DELETE /landlords/1.xml
  def destroy
    @landlord = Landlord.find(params[:id])
    @landlord.destroy

    respond_to do |format|
      format.html { redirect_to(landlords_url) }
      format.xml  { head :ok }
    end
  end
  
  private  
    def sort_column  
      Landlord.column_names.include?(params[:sort]) ? params[:sort] : "company_name"  
    end

    def sort_direction  
      %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"  
    end  
  
end
