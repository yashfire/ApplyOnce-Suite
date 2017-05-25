class ApplicantFoiProgramsController < ApplicationController
  before_action :set_applicant_foi_program, only: [:show, :edit, :update, :destroy]

  # GET /applicant_foi_programs
  # GET /applicant_foi_programs.json
  def index
    @applicant_foi_programs = current_applicant.applicant_foi_programs.all
    @programs = ApplicantProgramInterest.all
    @field_of_interest = ApplicantFieldOfInterest.all
  end

  # GET /applicant_foi_programs/1
  # GET /applicant_foi_programs/1.json
  def show
  end

  # GET /applicant_foi_programs/new
  def new
    @applicant_foi_program = current_applicant.applicant_foi_programs.build
  end

  # GET /applicant_foi_programs/1/edit
  def edit
  end

  # POST /applicant_foi_programs
  # POST /applicant_foi_programs.json
  def create
    @applicant_foi_program = current_applicant.applicant_foi_programs.build(applicant_foi_program_params)

    respond_to do |format|
      if @applicant_foi_program.save
        format.html { redirect_to @applicant_foi_program, notice: 'Applicant foi program was successfully created.' }
        format.json { render :show, status: :created, location: @applicant_foi_program }
      else
        format.html { render :new }
        format.json { render json: @applicant_foi_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicant_foi_programs/1
  # PATCH/PUT /applicant_foi_programs/1.json
  def update
    respond_to do |format|
      if @applicant_foi_program.update(applicant_foi_program_params)
        format.html { redirect_to @applicant_foi_program, notice: 'Applicant foi program was successfully updated.' }
        format.json { render :show, status: :ok, location: @applicant_foi_program }
      else
        format.html { render :edit }
        format.json { render json: @applicant_foi_program.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicant_foi_programs/1
  # DELETE /applicant_foi_programs/1.json
  def destroy
    @applicant_foi_program.destroy
    respond_to do |format|
      format.html { redirect_to applicant_foi_programs_url, notice: 'Applicant foi program was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant_foi_program
      @applicant_foi_program = ApplicantFoiProgram.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_foi_program_params
      params.require(:applicant_foi_program).permit(:applicant_id, :applicant_program_interest_id, :applicant_field_of_interest_id)
    end
end
