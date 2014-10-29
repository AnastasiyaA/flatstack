class GuestHousesController < ApplicationController
  before_action :set_guest_house, only: [:show, :edit, :update, :destroy]

  # GET /guest_houses
  # GET /guest_houses.json
  def index
    @guest_houses = GuestHouse.all
  end

  # GET /guest_houses/1
  # GET /guest_houses/1.json
  def show
  end

  # GET /guest_houses/new
  def new
    @guest_house = GuestHouse.new
  end

  # GET /guest_houses/1/edit
  def edit
  end

  # POST /guest_houses
  # POST /guest_houses.json
  def create
    @guest_house = GuestHouse.new(guest_house_params)

    respond_to do |format|
      if @guest_house.save
        format.html { redirect_to @guest_house, notice: 'Guest house was successfully created.' }
        format.json { render :show, status: :created, location: @guest_house }
      else
        format.html { render :new }
        format.json { render json: @guest_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guest_houses/1
  # PATCH/PUT /guest_houses/1.json
  def update
    respond_to do |format|
      if @guest_house.update(guest_house_params)
        format.html { redirect_to @guest_house, notice: 'Guest house was successfully updated.' }
        format.json { render :show, status: :ok, location: @guest_house }
      else
        format.html { render :edit }
        format.json { render json: @guest_house.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guest_houses/1
  # DELETE /guest_houses/1.json
  def destroy
    @guest_house.destroy
    respond_to do |format|
      format.html { redirect_to guest_houses_url, notice: 'Guest house was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guest_house
      @guest_house = GuestHouse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guest_house_params
      params.require(:guest_house).permit(:name, :city_id, :stars_count)
    end
end
