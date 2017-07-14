class SingleHousingsController < ApplicationController
  before_action :set_single_housing, only: [:show, :edit, :update, :destroy]

  # GET /single_housings
  # GET /single_housings.json
  def index
    @single_housings = SingleHousing.all
  end

  # GET /single_housings/1
  # GET /single_housings/1.json
  def show
  end

  # GET /single_housings/new
  def new
    @single_housing = SingleHousing.new
  end

  # GET /single_housings/1/edit
  def edit
  end

  # POST /single_housings
  # POST /single_housings.json
  def create
    @single_housing = SingleHousing.new(single_housing_params)

    respond_to do |format|
      if @single_housing.save
        format.html { redirect_to @single_housing, notice: 'Single housing was successfully created.' }
        format.json { render :show, status: :created, location: @single_housing }
      else
        format.html { render :new }
        format.json { render json: @single_housing.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /single_housings/1
  # PATCH/PUT /single_housings/1.json
  def update
    respond_to do |format|
      if @single_housing.update(single_housing_params)
        format.html { redirect_to @single_housing, notice: 'Single housing was successfully updated.' }
        format.json { render :show, status: :ok, location: @single_housing }
      else
        format.html { render :edit }
        format.json { render json: @single_housing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /single_housings/1
  # DELETE /single_housings/1.json
  def destroy
    @single_housing.destroy
    respond_to do |format|
      format.html { redirect_to single_housings_url, notice: 'Single housing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_single_housing
      @single_housing = SingleHousing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def single_housing_params
      params.require(:single_housing).permit(:title, :description)
    end
end
