class ApplicantPersonQualificationFieldOfStudiesController < ApplicationController
  before_action :set_applicant_person_qualification_field_of_study, only: [:show, :edit, :update, :destroy]

  # GET /applicant_person_qualification_field_of_studies
  # GET /applicant_person_qualification_field_of_studies.json
  def index
    @applicant_person_qualification_field_of_studies = current_applicant.applicant_person_qualification_field_of_studies.all
  end

  # GET /applicant_person_qualification_field_of_studies/1
  # GET /applicant_person_qualification_field_of_studies/1.json
  def show
  end

  # GET /applicant_person_qualification_field_of_studies/new
  def new
    @applicant_person_qualification_field_of_study = current_applicant.applicant_person_qualification_field_of_studies.build
  end

  # GET /applicant_person_qualification_field_of_studies/1/edit
  def edit
  end

  # POST /applicant_person_qualification_field_of_studies
  # POST /applicant_person_qualification_field_of_studies.json
  def create
    @applicant_person_qualification_field_of_study = current_applicant.applicant_person_qualification_field_of_studies.build(applicant_person_qualification_field_of_study_params)

    respond_to do |format|
      if @applicant_person_qualification_field_of_study.save
        format.html { redirect_to applicant_person_qualification_field_of_studies_url, notice: 'Applicant person qualification field of study was successfully created.' }
        format.json { render :show, status: :created, location: @applicant_person_qualification_field_of_study }
      else
        format.html { render :new }
        format.json { render json: @applicant_person_qualification_field_of_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicant_person_qualification_field_of_studies/1
  # PATCH/PUT /applicant_person_qualification_field_of_studies/1.json
  def update
    respond_to do |format|
      if @applicant_person_qualification_field_of_study.update(applicant_person_qualification_field_of_study_params)
        format.html { redirect_to applicant_person_qualification_field_of_studies_url, notice: 'Applicant person qualification field of study was successfully updated.' }
        format.json { render :show, status: :ok, location: @applicant_person_qualification_field_of_study }
      else
        format.html { render :edit }
        format.json { render json: @applicant_person_qualification_field_of_study.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicant_person_qualification_field_of_studies/1
  # DELETE /applicant_person_qualification_field_of_studies/1.json
  def destroy
    @applicant_person_qualification_field_of_study.destroy
    respond_to do |format|
      format.html { redirect_to applicant_person_qualification_field_of_studies_url, notice: 'Applicant person qualification field of study was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant_person_qualification_field_of_study
      @applicant_person_qualification_field_of_study = ApplicantPersonQualificationFieldOfStudy.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_person_qualification_field_of_study_params
      params.require(:applicant_person_qualification_field_of_study).permit(:Field_Of_Study, :Start_Date, :End_Date, :applicant_id, :applicant_university_id, :applicant_qual_status_id, :applicant_nqf_qualification_id)
    end
end
