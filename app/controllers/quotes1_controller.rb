class QuotesController < ApplicationController
  before_action :set_quote, only: %i[ show edit update destroy ]

  # GET /quotes or /quotes.json
  def index
    @quotes = Quote.all
  end

  # GET /quotes/1 or /quotes/1.json
  def show
  end

  # GET /quotes/new
  def new
    @quote = Quote.new
  end
  
  # GET /quotes/1/edit
  def edit
  end
  
  # POST /quotes or /quotes.json
  def create
    @quote = Quote.create(
      residential_type: params[:residential_type], 
      commercial_type: params[:commercial_type], 
      corporate_type: params[:corporate_type], 
      hybrid_type: params[:hybrid_type], 
      residential_apartment: params[:residential_apartment], 
      residential_floor: params[:residential_floor], 
      residential_basement: params[:residential_basement],
      commercial_business: params[:commercial_business], 
      commercial_floor: params[:commercial_floor],
      commercial_basement: params[:commercial_basement], 
      commercial_parking: params[:commercial_parking], 
      commercial_cage: params[:commercial_cage], 
      corporate_compagnie: params[:corporate_compagnie], 
      corporate_floor: params[:corporate_floor], 
      corporate_basement: params[:corporate_basement], 
      corporate_parking: params[:corporate_parking], 
      corporate_occupant: params[:corporate_occupant], 
      hybrid_business: params[:hybrid_business], 
      hybrid_floor: params[:hybrid_floor], 
      hybrid_basement: params[:hybrid_basement], 
      hybrid_parking: params[:hybrid_parking], 
      hybrid_occupant: params[:hybrid_occupant], 
      hybrid_hour: params[:hybrid_hour],
      cage_amount: params[:cage_amount], 
      standard_line: params[:standard_line], 
      prenium_line: params[:prenium_line],
      excelium_line: params[:excelium_line], 
      price_elevator: params[:price_elevator], 
      total_price: params[:total_price],
      installation_fees: params[:installation_fees],
      final_price: params[:final_price]
    )
  
    respond_to do |format|
      if @quote.save
        format.html { redirect_to quote_url(@quote), notice: "Quote was successfully submitted." }
        format.json { render :show, status: :created, location: @quote }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /quotes/1 or /quotes/1.json
  def update
    respond_to do |format|
      if @quote.update(quote_params)
        format.html { redirect_to quote_url(@quote), notice: "Quote was successfully updated." }
        format.json { render :show, status: :ok, location: @quote }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /quotes/1 or /quotes/1.json
  def destroy
    @quote.destroy

    respond_to do |format|
      format.html { redirect_to quotes_url, notice: "Quote was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quote
      @quote = Quote.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def quote_params
      params.fetch(:quote, {})
    end
  end