# class QuotesController < ApplicationController
#   def requestQuote
#   end

#   def create
#     quote = Quote.new

#     quote.residential_type= params[:residential_type]
#     quote.commercial_type= params[:commercial_type]
#     quote.corporate_type= params[:corporate_type]
#     quote.hybrid_type= params[:hybrid_type]
#     quote.residential_apartment= params[:residential_apartment]
#     quote.residential_floor= params[:residential_floor]
#     quote.residential_basement= params[:residential_basement]
#     quote.commercial_business= params[:commercial_business]
#     quote.commercial_floor= params[:commercial_floor]
#     quote.commercial_basement= params[:commercial_basement]
#     quote.commercial_parking= params[:commercial_parking]
#     quote.commercial_cage= params[:commercial_cage]
#     quote.corporate_companie= params[:corporate_companie]
#     quote.corporate_floor= params[:corporate_floor]
#     quote.corporate_basement= params[:corporate_basement]
#     quote.corporate_parking= params[:corporate_parking]
#     quote.corporate_occupant= params[:corporate_occupant] 
#     quote.hybrid_business= params[:hybrid_business]
#     quote.hybrid_floor= params[:hybrid_floor]
#     quote.hybrid_basement= params[:hybrid_basement]
#     quote.hybrid_parking= params[:hybrid_parking]
#     quote.hybrid_occupant= params[:hybrid_occupant]
#     quote.hybrid_hour= params[:hybrid_hour]
#     quote.cage_amount= params[:cage_amount]
#     quote.standard_line= params[:standard_line]
#     quote.premium_line= params[:premium_line]
#     quote.excelium_line= params[:excelium_line]
#     quote.price_elevator= params[:price_elevator] 
#     quote.total_price= params[:total_price]
#     quote.installation_fees= params[:installation_fees]
#     quote.final_price= params[:final_price]
#   end
# end  
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

    @quote = Quote.create 
    @quote.residential_type= params[:residential_type]
    @quote.commercial_type= params[:commercial_type]
    @quote.corporate_type= params[:corporate_type]
    @quote.hybrid_type= params[:hybrid_type]
    @quote.residential_apartment= params[:residential_apartment]
    @quote.residential_floor= params[:residential_floor]
    @quote.residential_basement= params[:residential_basement]
    @quote.commercial_business= params[:commercial_business]
    @quote.commercial_floor= params[:commercial_floor]
    @quote.commercial_basement= params[:commercial_basement]
    @quote.commercial_parking= params[:commercial_parking]
    @quote.commercial_cage= params[:commercial_cage]
    @quote.corporate_companie= params[:corporate_companie]
    @quote.corporate_floor= params[:corporate_floor]
    @quote.corporate_basement= params[:corporate_basement]
    @quote.corporate_parking= params[:corporate_parking]
    @quote.corporate_occupant= params[:corporate_occupant]
    @quote.hybrid_business= params[:hybrid_business]
    @quote.hybrid_floor= params[:hybrid_floor]
    @quote.hybrid_basement= params[:hybrid_basement]
    @quote.hybrid_parking= params[:hybrid_parking]
    @quote.hybrid_occupant= params[:hybrid_occupant]
    @quote.hybrid_hour= params[:hybrid_hour]
    @quote.cage_amount= params[:cage_amount]
    @quote.standard_line= params[:standard_line]
    @quote.premium_line= params[:premium_line]
    @quote.excelium_line= params[:excelium_line]
    @quote.price_elevator= params[:price_elevator]
    @quote.total_price= params[:total_price]
    @quote.installation_fees= params[:installation_fees]
    @quote.final_price= params[:final_price]
    @quote.save
    redirect_to @quote
  end
  
    respond_to do |format|
      if @quote.save
        format.html do
          redirect_to '/'
        end
        format.json { render json: @quote }
      else
        format.html { render 'new' }
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

    # Only allow a list of trusted parameters through.
    def quote_params
      params.fetch(:quote, {})
    end
end

