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
   # @status_time = StatusTime.new(status_time_params)
     @status_time = current_user.status_times.new(status_time_params)

    respond_to do |format|
      if @status_time.save
        format.html { redirect_to action: "index", notice: 'Status time was successfully created.' }
        format.json { render :show, status: :created, location: @status_time }
      else
        format.html { render :new }
        format.json { render json: @status_time.errors, status: :unprocessable_entity }
      end
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
      params.require(:status_time).permit(:status, :notes, :time_group_id, :status_record_id, :user_id)
    end
end
