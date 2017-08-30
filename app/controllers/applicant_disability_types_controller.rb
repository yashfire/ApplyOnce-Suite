class ApplicantDisabilityTypesController < ApplicationController
  before_action :set_applicant_disability_type, only: [:show, :edit, :update, :destroy]

  # GET /applicant_disability_types
  # GET /applicant_disability_types.json
  def index
    @applicant_disability_types = current_applicant.applicant_disability_types.all
  end

  # GET /applicant_disability_types/1
  # GET /applicant_disability_types/1.json
  def show
  end

  # GET /applicant_disability_types/new
  def new
    @applicant_disability_type = current_applicant.applicant_disability_types.build
  end

  # GET /applicant_disability_types/1/edit
  def edit
  end

  # POST /applicant_disability_types
  # POST /applicant_disability_types.json
  def create
    @applicant_disability_type = current_applicant.applicant_disability_types.build(applicant_disability_type_params)

    respond_to do |format|
      if @applicant_disability_type.save
        format.html { redirect_to applicant_disability_types_url, notice: 'Applicant disability type was successfully created.' }
        format.json { render :show, status: :created, location: @applicant_disability_type }
      else
        format.html { render :new }
        format.json { render json: @applicant_disability_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicant_disability_types/1
  # PATCH/PUT /applicant_disability_types/1.json
  def update
    respond_to do |format|
      if @applicant_disability_type.update(applicant_disability_type_params)
        format.html { redirect_to applicant_disability_types_url, notice: 'Applicant disability type was successfully updated.' }
        format.json { render :show, status: :ok, location: @applicant_disability_type }
      else
        format.html { render :edit }
        format.json { render json: @applicant_disability_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicant_disability_types/1
  # DELETE /applicant_disability_types/1.json
  def destroy
    @applicant_disability_type.destroy
    respond_to do |format|
      format.html { redirect_to applicant_disability_types_url, notice: 'Applicant disability type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant_disability_type
      @applicant_disability_type = ApplicantDisabilityType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_disability_type_params
      params.require(:applicant_disability_type).permit(:applicant_id, :applicant_disability_id, :Disability_Type)
    end
end
