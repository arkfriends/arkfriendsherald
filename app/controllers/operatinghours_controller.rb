class OperatinghoursController < ApplicationController
  before_action :set_operatinghour, only: [:show, :edit, :update, :destroy]

  # GET /operatinghours
  # GET /operatinghours.json
  def index
    @operatinghours = Operatinghour.all
  end

  # GET /operatinghours/1
  # GET /operatinghours/1.json
  def show
  end

  # GET /operatinghours/new
  def new
    @operatinghour = Operatinghour.new
  end

  # GET /operatinghours/1/edit
  def edit
  end

  # POST /operatinghours
  # POST /operatinghours.json
  def create
    @operatinghour = Operatinghour.new(operatinghour_params)

    respond_to do |format|
      if @operatinghour.save
        format.html { redirect_to @operatinghour, notice: 'Operatinghour was successfully created.' }
        format.json { render :show, status: :created, location: @operatinghour }
      else
        format.html { render :new }
        format.json { render json: @operatinghour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /operatinghours/1
  # PATCH/PUT /operatinghours/1.json
  def update
    respond_to do |format|
      if @operatinghour.update(operatinghour_params)
        format.html { redirect_to @operatinghour, notice: 'Operatinghour was successfully updated.' }
        format.json { render :show, status: :ok, location: @operatinghour }
      else
        format.html { render :edit }
        format.json { render json: @operatinghour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /operatinghours/1
  # DELETE /operatinghours/1.json
  def destroy
    @operatinghour.destroy
    respond_to do |format|
      format.html { redirect_to operatinghours_url, notice: 'Operatinghour was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_operatinghour
      @operatinghour = Operatinghour.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def operatinghour_params
      params.require(:operatinghour).permit(:dow, :starting, :ending)
    end
end
