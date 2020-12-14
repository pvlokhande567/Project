class ResisController < ApplicationController
  before_action :set_resi, only: [:show, :edit, :update, :destroy]

  # GET /resis
  # GET /resis.json
  def index
    @resis = Resi.all
  end

  # GET /resis/1
  # GET /resis/1.json
  def show
  end

  # GET /resis/new
  def new
    @resi = Resi.new
  end

  # GET /resis/1/edit
  def edit
  end

  # POST /resis
  # POST /resis.json
  def create
    @resi = Resi.new(resi_params)

    respond_to do |format|
      if @resi.save
        format.html { redirect_to @resi, notice: 'Resi was successfully created.' }
        format.json { render :show, status: :created, location: @resi }
      else
        format.html { render :new }
        format.json { render json: @resi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resis/1
  # PATCH/PUT /resis/1.json
  def update
    respond_to do |format|
      if @resi.update(resi_params)
        format.html { redirect_to @resi, notice: 'Resi was successfully updated.' }
        format.json { render :show, status: :ok, location: @resi }
      else
        format.html { render :edit }
        format.json { render json: @resi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resis/1
  # DELETE /resis/1.json
  def destroy
    @resi.destroy
    respond_to do |format|
      format.html { redirect_to resis_url, notice: 'Resi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resi
      @resi = Resi.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resi_params
      params.require(:resi).permit(:Fisrt_Name, :Last_Name, :Email, :Password, :Confirm_Password)
    end
end
