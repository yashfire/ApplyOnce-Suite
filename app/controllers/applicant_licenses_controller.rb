class ApplicantLicensesController < ApplicationController
  before_action :set_applicant_license, only: [:show, :edit, :update, :destroy]

  # GET /applicant_licenses
  # GET /applicant_licenses.json
  def index
    @applicant_licenses = current_applicant.applicant_licenses.all
    @status = ApplicantLicenseStatus.all
    @code = ApplicantLicenseCode.all 
  end

  # GET /applicant_licenses/1
  # GET /applicant_licenses/1.json
  def show
  end

  # GET /applicant_licenses/new
  def new
    @applicant_license = current_applicant.applicant_licenses.build
  end

  # GET /applicant_licenses/1/edit
  def edit
  end

  # POST /applicant_licenses
  # POST /applicant_licenses.json
  def create
    @applicant_license = current_applicant.applicant_licenses.build(applicant_license_params)

    respond_to do |format|
      if @applicant_license.save
        format.html { redirect_to applicant_licenses_url, notice: 'Applicant license was successfully created.' }
        format.json { render :show, status: :created, location: @applicant_license }
      else
        format.html { render :new }
        format.json { render json: @applicant_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicant_licenses/1
  # PATCH/PUT /applicant_licenses/1.json
  def update
    respond_to do |format|
      if @applicant_license.update(applicant_license_params)
        format.html { redirect_to applicant_licenses_url, notice: 'Applicant license was successfully updated.' }
        format.json { render :show, status: :ok, location: @applicant_license }
      else
        format.html { render :edit }
        format.json { render json: @applicant_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicant_licenses/1
  # DELETE /applicant_licenses/1.json
  def destroy
    @applicant_license.destroy
    respond_to do |format|
      format.html { redirect_to applicant_licenses_url, notice: 'Applicant license was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant_license
      @applicant_license = ApplicantLicense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_license_params
      params.require(:applicant_license).permit(:applicant_id, :applicant_license_code_id, :applicant_license_status_id)
    end
end
