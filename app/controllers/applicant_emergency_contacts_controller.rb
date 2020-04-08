class ApplicantEmergencyContactsController < ApplicationController
  before_action :set_applicant_emergency_contact, only: [:show, :edit, :update, :destroy]

  # GET /applicant_emergency_contacts
  # GET /applicant_emergency_contacts.json
  def index
    @applicant_emergency_contacts = current_applicant.applicant_emergency_contacts.all
  end

  # GET /applicant_emergency_contacts/1
  # GET /applicant_emergency_contacts/1.json
  def show
  end

  # GET /applicant_emergency_contacts/new
  def new
    @applicant_emergency_contact = current_applicant.applicant_emergency_contacts.build
  end

  # GET /applicant_emergency_contacts/1/edit
  def edit
  end

  # POST /applicant_emergency_contacts
  # POST /applicant_emergency_contacts.json
  def create
    @applicant_emergency_contact = current_applicant.applicant_emergency_contacts.build(applicant_emergency_contact_params)

    respond_to do |format|
      if @applicant_emergency_contact.save
        format.html { redirect_to applicant_emergency_contacts_url, notice: 'Applicant emergency contact was successfully created.' }
        format.json { render :show, status: :created, location: @applicant_emergency_contact }
      else
        format.html { render :new }
        format.json { render json: @applicant_emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicant_emergency_contacts/1
  # PATCH/PUT /applicant_emergency_contacts/1.json
  def update
    respond_to do |format|
      if @applicant_emergency_contact.update(applicant_emergency_contact_params)
        format.html { redirect_to applicant_emergency_contacts_url, notice: 'Applicant emergency contact was successfully updated.' }
        format.json { render :show, status: :ok, location: @applicant_emergency_contact }
      else
        format.html { render :edit }
        format.json { render json: @applicant_emergency_contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicant_emergency_contacts/1
  # DELETE /applicant_emergency_contacts/1.json
  def destroy
    @applicant_emergency_contact.destroy
    respond_to do |format|
      format.html { redirect_to applicant_emergency_contacts_url, notice: 'Applicant emergency contact was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant_emergency_contact
      @applicant_emergency_contact = ApplicantEmergencyContact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_emergency_contact_params
      params.require(:applicant_emergency_contact).permit(:Emergency_Contact_Name, :Emergency_Contact_Number, :Emergency_Contact_Relationship, :applicant_id)
    end
end
