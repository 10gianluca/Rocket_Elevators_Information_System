class BuildingsDetailsController < ApplicationController
  before_action :set_buildings_detail, only: %i[ show edit update destroy ]

  # GET /buildings_details or /buildings_details.json
  def index
    @buildings_details = BuildingsDetail.all
  end

  # GET /buildings_details/1 or /buildings_details/1.json
  def show
  end

  # GET /buildings_details/new
  def new
    @buildings_detail = BuildingsDetail.new
  end

  # GET /buildings_details/1/edit
  def edit
  end

  # POST /buildings_details or /buildings_details.json
  def create
    @buildings_detail = BuildingsDetail.new(buildings_detail_params)

    respond_to do |format|
      if @buildings_detail.save
        format.html { redirect_to buildings_detail_url(@buildings_detail), notice: "Buildings detail was successfully created." }
        format.json { render :show, status: :created, location: @buildings_detail }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @buildings_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /buildings_details/1 or /buildings_details/1.json
  def update
    respond_to do |format|
      if @buildings_detail.update(buildings_detail_params)
        format.html { redirect_to buildings_detail_url(@buildings_detail), notice: "Buildings detail was successfully updated." }
        format.json { render :show, status: :ok, location: @buildings_detail }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @buildings_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /buildings_details/1 or /buildings_details/1.json
  def destroy
    @buildings_detail.destroy

    respond_to do |format|
      format.html { redirect_to buildings_details_url, notice: "Buildings detail was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_buildings_detail
      @buildings_detail = BuildingsDetail.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def buildings_detail_params
      params.fetch(:buildings_detail, {})
    end
end
