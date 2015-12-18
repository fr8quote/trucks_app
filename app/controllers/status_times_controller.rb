class StatusTimesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_status_time, only: [:show, :edit, :update, :destroy]


#-------------------------------------------------------------------------------

  def index
    @status_times = current_user.status_times
    @status_time = StatusTime.new
    @user = current_user
  end

#-------------------------------------------------------------------------------

  def show
  end

#-------------------------------------------------------------------------------
 
  def new
    @status_time = StatusTime.new
  end

#-------------------------------------------------------------------------------

  def edit
  end

#-------------------------------------------------------------------------------

  def create
    # @status_time.trip_id = StatusTime.find(trip_id.last)
     @trip = Trip.find(params[:trip_id])
     
     @status_time = @trip.status_times.create(status_time_params)
     @status_time.user_id = current_user.id if current_user

      if @status_time.save
         redirect_to trip_path( @trip ), notice: 'Status time was successfully created.' 
    
      else
         render :new 
      
      end
    end
 

#-------------------------------------------------------------------------------
 
  def update
    respond_to do |format|
      if @status_time.update(status_time_params)
        format.html { redirect_to @status_time, notice: 'Status time was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_time }
      else
        format.html { render :edit }
        format.json { render json: @status_time.errors, status: :unprocessable_entity }
      end
    end
  end

#-------------------------------------------------------------------------------

  def destroy
    @status_time.destroy
    respond_to do |format|
      format.html { redirect_to status_times_url, notice: 'Status time was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

#-------------------------------------------------------------------------------

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_time
      @status_time = StatusTime.find(params[:id])
    end

#-------------------------------------------------------------------------------
 
    def status_time_params
      params.require(:status_time).permit(
      :status, 
      :notes, 
      :trip_id, 
      :user_id,
      :location 
      )
    end
end
