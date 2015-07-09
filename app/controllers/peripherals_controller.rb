class PeripheralsController < ApplicationController
  before_action :set_peripheral, only: [:show, :edit, :update, :destroy]

  # GET /peripherals
  # GET /peripherals.json
  def index
    @peripherals = Peripheral.all
  end

  # GET /peripherals/1
  # GET /peripherals/1.json
  def show
  end

  # GET /peripherals/new
  def new
    @peripheral = Peripheral.new
  end

  # GET /peripherals/1/edit
  def edit
  end

  # POST /peripherals
  # POST /peripherals.json
  def create
    @peripheral = Peripheral.new(peripheral_params)

    respond_to do |format|
      if @peripheral.save
        format.html { redirect_to @peripheral, notice: 'Peripheral was successfully created.' }
        format.json { render :show, status: :created, location: @peripheral }
      else
        format.html { render :new }
        format.json { render json: @peripheral.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /peripherals/1
  # PATCH/PUT /peripherals/1.json
  def update
    respond_to do |format|
      if @peripheral.update(peripheral_params)
        format.html { redirect_to @peripheral, notice: 'Peripheral was successfully updated.' }
        format.json { render :show, status: :ok, location: @peripheral }
      else
        format.html { render :edit }
        format.json { render json: @peripheral.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /peripherals/1
  # DELETE /peripherals/1.json
  def destroy
    @peripheral.destroy
    respond_to do |format|
      format.html { redirect_to peripherals_url, notice: 'Peripheral was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_peripheral
      @peripheral = Peripheral.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def peripheral_params
      params.require(:peripheral).permit(:name)
    end
end
