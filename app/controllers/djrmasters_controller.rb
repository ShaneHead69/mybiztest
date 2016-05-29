class DjrmastersController < ApplicationController
  before_action :set_djrmaster, only: [:show, :edit, :update, :destroy]

  # GET /djrmasters
  # GET /djrmasters.json
  def index
    @djrmasters = Djrmaster.all
  end

  # GET /djrmasters/1
  # GET /djrmasters/1.json
  def show
  end

  # GET /djrmasters/new
  def new
    @djrmaster = Djrmaster.new
  end

  # GET /djrmasters/1/edit
  def edit
  end

  # POST /djrmasters
  # POST /djrmasters.json
  def create
    @djrmaster = Djrmaster.new(djrmaster_params)

    respond_to do |format|
      if @djrmaster.save
        format.html { redirect_to @djrmaster, notice: 'Djrmaster was successfully created.' }
        format.json { render :show, status: :created, location: @djrmaster }
      else
        format.html { render :new }
        format.json { render json: @djrmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /djrmasters/1
  # PATCH/PUT /djrmasters/1.json
  def update
    respond_to do |format|
      if @djrmaster.update(djrmaster_params)
        format.html { redirect_to @djrmaster, notice: 'Djrmaster was successfully updated.' }
        format.json { render :show, status: :ok, location: @djrmaster }
      else
        format.html { render :edit }
        format.json { render json: @djrmaster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /djrmasters/1
  # DELETE /djrmasters/1.json
  def destroy
    @djrmaster.destroy
    respond_to do |format|
      format.html { redirect_to djrmasters_url, notice: 'Djrmaster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_djrmaster
      @djrmaster = Djrmaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def djrmaster_params
      params.require(:djrmaster).permit(:subdate, :subnum, :subform, :subformver, :sectname, :projname, :djrdate, :weather, :foreman, :jobphase, :worktoday, :accdelay, :workschednextday)
    end
end
