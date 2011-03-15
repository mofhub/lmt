class DocumentsController < ApplicationController
  before_filter :authenticate
  helper_method :sort_column, :sort_direction  

  def index
    @documents = Document.order(sort_column + ' ' + sort_direction).paginate(:page => params[:page])  
    @document_count = Document.count
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @documents }
    end
  end

  # GET /projects/1
  # GET /projects/1.xml
  def show
    @document = Document.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @document }
    end
  end

  # GET /projects/new
  # GET /projects/new.xml
  def new
    @document = Document.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @document }
    end
  end

  # GET /projects/1/edit
  def edit
    @document = Document.find(params[:id])
  end

  # POST /projects
  # POST /projects.xml
  def create
    @document = Document.new(params[:document])

    respond_to do |format|
      if @document.save
        format.html { redirect_to(@document, :notice => 'Project was successfully created.') }
        format.xml  { render :xml => @document, :status => :created, :location => @document }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @document.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /projects/1
  # PUT /projects/1.xml
  def update
    @document = Document.find(params[:id])

    respond_to do |format|
      if @document.update_attributes(params[:project])
        format.html { redirect_to(@document, :notice => 'Project was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @document.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.xml
  def destroy
    @document = Document.find(params[:id])
    @document.destroy

    respond_to do |format|
      format.html { redirect_to(documents_url) }
      format.xml  { head :ok }
    end
  end
  
  private  
     def sort_column  
       Document.column_names.include?(params[:sort]) ? params[:sort] : "title"  
     end

     def sort_direction  
       %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"  
     end
end
