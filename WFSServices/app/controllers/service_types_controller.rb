class ServiceTypesController < ApplicationController
  before_action :set_service_type, only: [:show, :edit, :update, :destroy]
  # GET /service_types
  # GET /service_types.json
  def index
    @service_types = ServiceType.alphabetical
  end
  # GET /service_types/1
  # GET /service_types/1.json
  def show
  end
  # GET /service_types/new
  def new
    @service_type = ServiceType.new
    unless params[:service_id].nil?
      @service = Service.find(params[:service_id])
      # @current_contacts = @service.service_types.map{ |c| c.id }
    end
  end

  # GET /service_types/1/edit
  def edit
    @service_type = ServiceType.find(params[:id])
  end

  def create
    @service_type = ServiceType.new(service_type_params)
    if @service_type.save
      redirect_to service_path(@service_type.service)
    else
      @service = Service.find(params[:service_type][:service_id])
        render action: 'new', locals: { service: @service }
    end
  end

  def destroy
    @service_type = ServiceType.find(params[:id])
    if @service_type.destroy
      flash[:notice] = "Successfully removed '#{@service_type.name}'."
      redirect_to @service_type.service
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_type
      @service_type = ServiceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_type_params
      params.require(:service_type).permit(:name, :staff,:unit_cost, :unit_rate, :avg_los, :rev_los, :frequency, :created_by, :updated_by, :service_id)
    end
end