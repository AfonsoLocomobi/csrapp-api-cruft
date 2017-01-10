class VehiclesController < AdminController
  before_action :set_vehicle, only: [:show, :edit, :update, :destroy]


  MODEL_YEAR_WINDOW = 10

  def index
    @vehicles = Vehicle.where :employee_id => params[:employee_id]
    #render json: @vehicles
  end

  def show
    render json: @vehicle
  end

  def new
    @vehicle = Vehicle.new :employee_id => params[:employee_id]
    render json: @vehicle
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)

    respond_to do |format|
      if @vehicle.save
        format.json { render :show, status: :created, location: @vehicle }
      else
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.json { render :show, status: :ok, location: @vehicle }
      else
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.json { head :no_content }
    end
  end

  def types
    @vehicle_types = VehicleType.all
    render json: @vehicle_types
  end

  def models
    @vehicle_models = VehicleModel.all
    render json: @vehicle_models
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vehicle
      @vehicle = Vehicle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vehicle_params
      params.require(:vehicle).permit(:license_plate_number, :state_id, :temporary_plate, :vehicle_type, :year, :vehicle_model_id, :vehicle_type_id, :color, :avi_sticker_number, :parking_lot_sticker_number, :leed_qualified, :employee_id)
    end
end
