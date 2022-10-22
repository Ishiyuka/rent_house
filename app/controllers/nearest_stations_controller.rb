class NearestStationsController < ApplicationController
  before_action :set_nearest_station, only: %i[ show edit update destroy ]

  # GET /nearest_stations or /nearest_stations.json
  def index
    @nearest_stations = NearestStation.all
  end

  # GET /nearest_stations/1 or /nearest_stations/1.json
  def show
  end

  # GET /nearest_stations/new
  def new
    # @nearest_station = NearestStation.new(nearest_station_params)
    # @nearest_station.rent_house_id = current_rent_house.id
    @nearest_station = current_rent_house.nearest_stations.build(nearest_station_params)
  end

  # GET /nearest_stations/1/edit
  def edit
  end

  # POST /nearest_stations or /nearest_stations.json
  def create
    @nearest_station = NearestStation.new(nearest_station_params)

    respond_to do |format|
      if @nearest_station.save
        format.html { redirect_to @nearest_station, notice: "Nearest station was successfully created." }
        format.json { render :show, status: :created, location: @nearest_station }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @nearest_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nearest_stations/1 or /nearest_stations/1.json
  def update
    respond_to do |format|
      if @nearest_station.update(nearest_station_params)
        format.html { redirect_to @nearest_station, notice: "Nearest station was successfully updated." }
        format.json { render :show, status: :ok, location: @nearest_station }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @nearest_station.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nearest_stations/1 or /nearest_stations/1.json
  def destroy
    @nearest_station.destroy
    respond_to do |format|
      format.html { redirect_to nearest_stations_url, notice: "Nearest station was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nearest_station
      @nearest_station = NearestStation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def nearest_station_params
      params.require(:nearest_station).permit(:line, :station, :minute)
    end
end
