class ApplicantAddressesController < ApplicationController
  before_action :set_applicant_address, only: [:show, :edit, :update, :destroy]

  # GET /applicant_addresses
  # GET /applicant_addresses.json
  def index
    @applicant_addresses = current_applicant.applicant_addresses.all
  end

  # GET /applicant_addresses/1
  # GET /applicant_addresses/1.json
  def show
  end

  # GET /applicant_addresses/new
  def new
    @applicant_address = current_applicant.applicant_addresses.build
  end

  # GET /applicant_addresses/1/edit
  def edit
  end

  # POST /applicant_addresses
  # POST /applicant_addresses.json
  def create
    @applicant_address = current_applicant.applicant_addresses.build(applicant_address_params)

    respond_to do |format|
      if @applicant_address.save
        format.html { redirect_to applicant_addresses_url, notice: 'Applicant address was successfully created.' }
        format.json { render :show, status: :created, location: @applicant_address }
      else
        format.html { render :new }
        format.json { render json: @applicant_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /applicant_addresses/1
  # PATCH/PUT /applicant_addresses/1.json
  def update
    respond_to do |format|
      if @applicant_address.update(applicant_address_params)
        format.html { redirect_to applicant_addresses_url, notice: 'Applicant address was successfully updated.' }
        format.json { render :show, status: :ok, location: @applicant_address }
      else
        format.html { render :edit }
        format.json { render json: @applicant_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /applicant_addresses/1
  # DELETE /applicant_addresses/1.json
  def destroy
    @applicant_address.destroy
    respond_to do |format|
      format.html { redirect_to applicant_addresses_url, notice: 'Applicant address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_applicant_address
      @applicant_address = ApplicantAddress.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def applicant_address_params
      params.require(:applicant_address).permit(:Address_Line_1, :Address_Line_2, :Address_Line_3, :Postal_Code, :applicant_id, :applicant_pm_city_id)
    end
end
