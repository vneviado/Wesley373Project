class ServiceTypesController < ApplicationController
  before_action :set_service_type, only: [:show, :edit, :update, :destroy]

  # GET /service_types
  # GET /service_types.json
  def index
    @service_types = ServiceType.all
  end

  # GET /service_types/1
  # GET /service_types/1.json
  def show
  end

  # GET /service_types/new
  def new
    @service_type = ServiceType.new
    @service = Service.find(params[:service_id])
  end

  # GET /service_types/1/edit
  def edit
  end

  # POST /service_types
  # POST /service_types.json
  def create
    @service_type = ServiceType.new(service_type_params)
      if @service_type.save
        flash[:notice] = "Successfully added service_type."
        redirect_to service_path(@service_type.service)
      else
        @service = Service.find(params[:service_type][:service_id])
        render action: 'new', locals: { service: @service }
      end
  end

  # PATCH/PUT /service_types/1
  # PATCH/PUT /service_types/1.json
  def update
    respond_to do |format|
      if @service_type.update(service_type_params)
        format.html { redirect_to @service_type, notice: 'Service type was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_type }
      else
        format.html { render :edit }
        format.json { render json: @service_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_types/1
  # DELETE /service_types/1.json
  def destroy
    @service_type.destroy
    respond_to do |format|
      format.html { redirect_to service_types_url, notice: 'Service type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_type
      @service_type = ServiceType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_type_params
      params.require(:service_type).permit(:name, :cost, :staff, :created_by, :updated_by, :service_id)
    end
end
