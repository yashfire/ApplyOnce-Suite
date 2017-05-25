class ApplicantExperiencesController < ApplicationController
  before_action :set_applicant_experience, only: [:show, :edit, :update, :destroy]

  # GET /applicant_experiences
  # GET /applicant_experiences.json
  def index
    @applicant_experiences = current_applicant.applicant_experiences.all
  end

  # GET /applicant_experiences/1
  # GET /applicant_experiences/1.json
  def show
  end

  # GET /applicant_experiences/new
  def new
    @applicant_experience = current_applicant.applicant_experiences.build
  end

  # GET /applicant_experiences/1/edit
  def edit
  end

  # POST /applicant_experiences
  # POST /applicant_experiences.json
  def create
    @applicant_experience = current_applicant.applicant_experiences.build(applicant_experience_params)

    respond_to do |format|
      if @applicant_experience.save
        format.html { redirect_to @applicant_experience, notice: 'Applicant experience was successfully created.' }
        format.json { render :show, status: :created, location: @applicant_experience }
      else
        format.html { render :new }
        format.json { render json: @applicant_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicant_experiences/1
  # PATCH/PUT /applicant_experiences/1.json
  def update
    respond_to do |format|
      if @applicant_experience.update(applicant_experience_params)
        format.html { redirect_to @applicant_experience, notice: 'Applicant experience was successfully updated.' }
        format.json { render :show, status: :ok, location: @applicant_experience }
      else
        format.html { render :edit }
        format.json { render json: @applicant_experience.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicant_experiences/1
  # DELETE /applicant_experiences/1.json
  def destroy
    @applicant_experience.destroy
    respond_to do |format|
      format.html { redirect_to applicant_experiences_url, notice: 'Applicant experience was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant_experience
      @applicant_experience = ApplicantExperience.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_experience_params
      params.require(:applicant_experience).permit(:Job_Name, :Company_Name, :Duties, :Start_Date, :End_Date, :applicant_id)
    end
end
