class UsersController < ApplicationController
  before_filter :authenticate, :only => [:index, :edit, :update, :destroy]
  before_filter :correct_user, :only => [:edit, :update]
  before_filter :admin_user, :only => :destroy
  
  helper_method :sort_column, :sort_direction  

  def index
    @users = User.order(sort_column + ' ' + sort_direction).paginate(:page => params[:page])
    @users_count = User.count

    @title = "All users"
  end

  def show
    @user = User.find(params[:id])
    @users_count = User.count
    @microposts = @user.microposts.paginate(:page => params[:page])
    @title = @user.name
  end

  def new
    @user = User.new
    @title = "Sign up"
  end
  
  def create
    @user = User.new(params[:user])
      if @user.save
        sign_in @user
        redirect_to @user, :flash => { :success => "Welcome to the LMS!" }
      else
        @title = "Sign up"
          render 'new' 
      end
  end

  def edit
    @title = "Edit User"
  end
  
  def update
    @title = "Edit User"
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(@user, :notice => 'Profile updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path, :flash => { :success =>  "User Deleted." }
  end
  
  private
  
  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_path) unless current_user?(@user)
  end
  
  def admin_user
    @user = User.find(params[:id])
    redirect_to(root_path) if (!current_user.admin? || current_user?(@user))
  end
  
  def sort_column  
       Listing.column_names.include?(params[:sort]) ? params[:sort] : "name"  
  end

  def sort_direction  
       %w[asc desc].include?(params[:direction]) ?  params[:direction] : "asc"  
  end
end
