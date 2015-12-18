class TripsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

#-------------------------------------------------------------------------------

  def index 
    @trips = current_user.trips
    @user = current_user
  end
  
#-------------------------------------------------------------------------------


  def show
  end
  
#-------------------------------------------------------------------------------  


  def new
    @trip = Trip.new
  end
  
  
#-------------------------------------------------------------------------------



  def edit
  end
  
#-------------------------------------------------------------------------------

  def create
   # @trip.status_times.user_id = current_user
   
    @trip = Trip.new(trip_params) 
    @trip.user_id = current_user.id if current_user
    


      if @trip.save
         redirect_to @trip, notice: 'Trip was successfully created.' 
 
      else
         render :new 
 
      
    end
  end
  
#-------------------------------------------------------------------------------

  def update
    respond_to do |format|
      if @trip.update(trip_params)
        format.html { redirect_to @trip, notice: 'Trip was successfully updated.' }
        format.json { render :show, status: :ok, location: @trip }
      else
        format.html { render :edit }
        format.json { render json: @trip.errors, status: :unprocessable_entity }
      end
    end
  end
  
#-------------------------------------------------------------------------------

  def destroy
    @trip.destroy
    respond_to do |format|
      format.html { redirect_to trips_url, notice: 'Trip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
#-------------------------------------------------------------------------------

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trip
      @trip = Trip.find(params[:id])
    end
    
#-------------------------------------------------------------------------------

    # Never trust parameters from the scary internet, only allow the white list through.
    def trip_params
      params.require(:trip).permit(
        :user_id, 
        status_times_attributes: [
          :status_time_id, 
          :user_id, 
          :_destroy,
          :status,
          :notes,
          :location,
          :created_at,
          :updated_at,
          :trip_id,
          :id
          ]
        )
    end
end
