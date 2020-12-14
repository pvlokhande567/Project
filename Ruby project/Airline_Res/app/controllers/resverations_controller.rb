class ResverationsController < ApplicationController
  before_action :set_resveration, only: [:show, :edit, :update, :destroy]

  # GET /resverations
  # GET /resverations.json
  def index
    @resverations = Resveration.all
  end

  # GET /resverations/1
  # GET /resverations/1.json
  def show
  end

  # GET /resverations/new
  def new
    @resveration = Resveration.new
  end

  # GET /resverations/1/edit
  def edit
  end

  # POST /resverations
  # POST /resverations.json
  def create
    @resveration = Resveration.new(resveration_params)

    respond_to do |format|
      if @resveration.save
        format.html { redirect_to @resveration, notice: 'Resveration was successfully created.' }
        format.json { render :show, status: :created, location: @resveration }
      else
        format.html { render :new }
        format.json { render json: @resveration.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resverations/1
  # PATCH/PUT /resverations/1.json
  def update
    respond_to do |format|
      if @resveration.update(resveration_params)
        format.html { redirect_to @resveration, notice: 'Resveration was successfully updated.' }
        format.json { render :show, status: :ok, location: @resveration }
      else
        format.html { render :edit }
        format.json { render json: @resveration.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resverations/1
  # DELETE /resverations/1.json
  def destroy
    @resveration.destroy
    respond_to do |format|
      format.html { redirect_to resverations_url, notice: 'Resveration was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resveration
      @resveration = Resveration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resveration_params
      params.require(:resveration).permit(:First_Name, :Last_Name, :Date_Of_Birth, :Seat_Request)
    end
end
