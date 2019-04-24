class ServiceContactsController < ApplicationController
  before_action :set_service_contact, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /service_contacts
  # GET /service_contacts.json
  def index
    @service_contacts = ServiceContact.all
  end

  # GET /service_contacts/new
  def new
    @service_contacts = ServiceContact.all
    @service_contact = ServiceContact.new
    unless params[:service_id].nil?
      @service = Service.find(params[:service_id])
      @current_contacts = @service.service_contacts.map{ |c| c.id }
    end
  end

  # GET /service_contacts/1/edit
  def edit
  end

  # POST /service_contacts
  # POST /service_contacts.json
  def create
    @service_contact = ServiceContact.new(service_contact_params)
    if @service_contact.save
      flash[:notice] = "Successfully added '#{@service_contact.contact.name}' as a contact for '#{@service_contact.service.name}'."
      redirect_to service_path(@service_contact.service)
    else
      @service = Service.find(params[:service_contact][:service_id])
      render action: 'new', locals: { service: @service }
    end
  end

  # DELETE /service_contacts/1
  # DELETE /service_contacts/1.json
  def destroy
    @service_contact.destroy
    respond_to do |format|
      format.html { redirect_to @service_contact.service, notice: "'#{@service_contact.contact.name}' was successfully removed as a contact." }
      format.json { head :no_content }
      
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_contact
      @service_contact = ServiceContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_contact_params
      params.require(:service_contact).permit(:service_id, :contact_id, :created_at, :updated_at)
    end
end
