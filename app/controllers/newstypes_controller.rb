class NewstypesController < ApplicationController
  before_action :set_newstype, only: [:show, :edit, :update, :destroy]

  # GET /newstypes
  # GET /newstypes.json
  def index
    @newstypes = Newstype.all
  end

  # GET /newstypes/1
  # GET /newstypes/1.json
  def show
  end

  # GET /newstypes/new
  def new
    @newstype = Newstype.new
  end

  # GET /newstypes/1/edit
  def edit
  end

  # POST /newstypes
  # POST /newstypes.json
  def create
    @newstype = Newstype.new(newstype_params)

    respond_to do |format|
      if @newstype.save
        format.html { redirect_to @newstype, notice: 'Newstype was successfully created.' }
        format.json { render :show, status: :created, location: @newstype }
      else
        format.html { render :new }
        format.json { render json: @newstype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /newstypes/1
  # PATCH/PUT /newstypes/1.json
  def update
    respond_to do |format|
      if @newstype.update(newstype_params)
        format.html { redirect_to @newstype, notice: 'Newstype was successfully updated.' }
        format.json { render :show, status: :ok, location: @newstype }
      else
        format.html { render :edit }
        format.json { render json: @newstype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /newstypes/1
  # DELETE /newstypes/1.json
  def destroy
    @newstype.destroy
    respond_to do |format|
      format.html { redirect_to newstypes_url, notice: 'Newstype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_newstype
      @newstype = Newstype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def newstype_params
      params.require(:newstype).permit(:extension, :viewer, :jscript, :pretags, :posttags)
    end
end
