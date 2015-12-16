class StatusRecordsController < ApplicationController
  before_action :set_status_record, only: [:show, :edit, :update, :destroy]

#-------------------------------------------------------------------------------

  def index
    @status_records = StatusRecord.all
    @status_times = current_user.status_times
  end

#-------------------------------------------------------------------------------

  def show
   
  end

#-------------------------------------------------------------------------------

  def new
    @status_record = StatusRecord.new
    @status_times = current_user.status_times
  end

#-------------------------------------------------------------------------------

  def edit
  end
  
#-------------------------------------------------------------------------------

  def create
    @status_record = StatusRecord.new(status_record_params)

    respond_to do |format|
      if @status_record.save
        format.html { redirect_to @status_record, notice: 'Status record was successfully created.' }
        format.json { render :show, status: :created, location: @status_record }
      else
        format.html { render :new }
        format.json { render json: @status_record.errors, status: :unprocessable_entity }
      end
    end
  end

#-------------------------------------------------------------------------------

  def update
    respond_to do |format|
      if @status_record.update(status_record_params)
        format.html { redirect_to @status_record, notice: 'Status record was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_record }
      else
        format.html { render :edit }
        format.json { render json: @status_record.errors, status: :unprocessable_entity }
      end
    end
  end

#-------------------------------------------------------------------------------

  def destroy
    @status_record.destroy
    respond_to do |format|
      format.html { redirect_to status_records_url, notice: 'Status record was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

#-------------------------------------------------------------------------------

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_record
      @status_record = StatusRecord.find(params[:id])
    end

#-------------------------------------------------------------------------------

    def status_record_params
      params.require(:status_record).permit(
        :group_id, 
        :user_id, status_times_attributes: [ 
          :status, 
          :notes, 
          :time_group_id, 
          :status_record_id, 
          :user_id 
          ]
          )
    end
end
