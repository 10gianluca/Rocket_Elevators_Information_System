class EmployeeListsController < ApplicationController
  before_action :set_employee_list, only: %i[ show edit update destroy ]

  # GET /employee_lists or /employee_lists.json
  def index
    @employee_lists = EmployeeList.all
  end

  # GET /employee_lists/1 or /employee_lists/1.json
  def show
  end

  # GET /employee_lists/new
  def new
    @employee_list = EmployeeList.new
  end

  # GET /employee_lists/1/edit
  def edit
  end

  # POST /employee_lists or /employee_lists.json
  def create
    @employee_list = EmployeeList.new(employee_list_params)

    respond_to do |format|
      if @employee_list.save
        format.html { redirect_to employee_list_url(@employee_list), notice: "Employee list was successfully created." }
        format.json { render :show, status: :created, location: @employee_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employee_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employee_lists/1 or /employee_lists/1.json
  def update
    respond_to do |format|
      if @employee_list.update(employee_list_params)
        format.html { redirect_to employee_list_url(@employee_list), notice: "Employee list was successfully updated." }
        format.json { render :show, status: :ok, location: @employee_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employee_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employee_lists/1 or /employee_lists/1.json
  def destroy
    @employee_list.destroy

    respond_to do |format|
      format.html { redirect_to employee_lists_url, notice: "Employee list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee_list
      @employee_list = EmployeeList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employee_list_params
      params.require(:employee_list).permit(:first_name, :last_name, :title, :email)
    end
end
