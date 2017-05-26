class ApplicantReferencesController < ApplicationController
  before_action :set_applicant_reference, only: [:show, :edit, :update, :destroy]

  # GET /applicant_references
  # GET /applicant_references.json
  def index
    @applicant_references = current_applicant.applicant_references.all
  end

  # GET /applicant_references/1
  # GET /applicant_references/1.json
  def show
  end

  # GET /applicant_references/new
  def new
    @applicant_reference = current_applicant.applicant_references.build
  end

  # GET /applicant_references/1/edit
  def edit
  end

  # POST /applicant_references
  # POST /applicant_references.json
  def create
    @applicant_reference = current_applicant.applicant_references.build(applicant_reference_params)

    respond_to do |format|
      if @applicant_reference.save
        format.html { redirect_to applicant_references_url, notice: 'Applicant reference was successfully created.' }
        format.json { render :show, status: :created, location: @applicant_reference }
      else
        format.html { render :new }
        format.json { render json: @applicant_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicant_references/1
  # PATCH/PUT /applicant_references/1.json
  def update
    respond_to do |format|
      if @applicant_reference.update(applicant_reference_params)
        format.html { redirect_to @applicant_reference, notice: 'Applicant reference was successfully updated.' }
        format.json { render :show, status: :ok, location: @applicant_reference }
      else
        format.html { render :edit }
        format.json { render json: @applicant_reference.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicant_references/1
  # DELETE /applicant_references/1.json
  def destroy
    @applicant_reference.destroy
    respond_to do |format|
      format.html { redirect_to applicant_references_url, notice: 'Applicant reference was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant_reference
      @applicant_reference = ApplicantReference.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_reference_params
      params.require(:applicant_reference).permit(:Contact_Number, :Reference_Name, :Email_address, :Relationship, :applicant_id)
    end
end
