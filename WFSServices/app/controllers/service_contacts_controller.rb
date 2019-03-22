class ServiceContactsController < ApplicationController
  before_action :set_service_contact, only: [:show, :edit, :update, :destroy]

  # GET /service_contacts
  # GET /service_contacts.json
  def index
    @service_contacts = ServiceContact.all
  end

  # GET /service_contacts/1
  # GET /service_contacts/1.json
  def show
  end

  # GET /service_contacts/new
  def new
    @service_contact = ServiceContact.new
  end

  # GET /service_contacts/1/edit
  def edit
  end

  # POST /service_contacts
  # POST /service_contacts.json
  def create
    @service_contact = ServiceContact.new(service_contact_params)

    respond_to do |format|
      if @service_contact.save
        format.html { redirect_to @service_contact, notice: 'Service contact was successfully created.' }
        format.json { render :show, status: :created, location: @service_contact }
      else
        format.html { render :new }
        format.json { render json: @service_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_contacts/1
  # PATCH/PUT /service_contacts/1.json
  def update
    respond_to do |format|
      if @service_contact.update(service_contact_params)
        format.html { redirect_to @service_contact, notice: 'Service contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @service_contact }
      else
        format.html { render :edit }
        format.json { render json: @service_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_contacts/1
  # DELETE /service_contacts/1.json
  def destroy
    @service_contact.destroy
    respond_to do |format|
      format.html { redirect_to service_contacts_url, notice: 'Service contact was successfully destroyed.' }
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
      params.require(:service_contact).permit(:service_id, :contact_id)
    end
end
