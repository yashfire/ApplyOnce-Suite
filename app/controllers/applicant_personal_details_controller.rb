class ApplicantPersonalDetailsController < ApplicationController
  before_action :set_applicant_personal_detail, only: [:show, :edit, :update, :destroy]

  # GET /applicant_personal_details
  # GET /applicant_personal_details.json
  def index
    @applicant_personal_details = current_applicant.applicant_personal_details.all
  end

  # GET /applicant_personal_details/1
  # GET /applicant_personal_details/1.json
  def show
  end

  # GET /applicant_personal_details/new
  def new
    @applicant_personal_detail = current_applicant.applicant_personal_details.build
  end

  # GET /applicant_personal_details/1/edit
  def edit
  end

  # POST /applicant_personal_details
  # POST /applicant_personal_details.json
  def create
    @applicant_personal_detail = current_applicant.applicant_personal_details.build(applicant_personal_detail_params)

    respond_to do |format|
      if @applicant_personal_detail.save
        format.html { redirect_to applicant_personal_details_url, notice: 'Applicant personal detail was successfully created.' }
        format.json { render :show, status: :created, location: @applicant_personal_detail }
      else
        format.html { render :new }
        format.json { render json: @applicant_personal_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicant_personal_details/1
  # PATCH/PUT /applicant_personal_details/1.json
  def update
    respond_to do |format|
      if @applicant_personal_detail.update(applicant_personal_detail_params)
        format.html { redirect_to applicant_personal_details_url, notice: 'Applicant personal detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @applicant_personal_detail }
      else
        format.html { render :edit }
        format.json { render json: @applicant_personal_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicant_personal_details/1
  # DELETE /applicant_personal_details/1.json
  def destroy
    @applicant_personal_detail.destroy
    respond_to do |format|
      format.html { redirect_to applicant_personal_details_url, notice: 'Applicant personal detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant_personal_detail
      @applicant_personal_detail = ApplicantPersonalDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_personal_detail_params
      params.require(:applicant_personal_detail).permit(:Surname, :First_Name, :Middle_Name,
       :Contact_Number, :Alt_Contact_Number, :Criminal_Record, :Skills,
        :Application_Status, :Number_Of_Dependancies, :applicant_id,
        :applicant_race_id, :applicant_gender_id, :applicant_marital_status_id, 
        :applicant_nationality_id, :applicant_current_occupation_id)
    end
end
