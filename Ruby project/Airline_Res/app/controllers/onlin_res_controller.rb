class OnlinResController < ApplicationController
  before_action :set_onlin_re, only: [:show, :edit, :update, :destroy]

  # GET /onlin_res
  # GET /onlin_res.json
  def index
    @onlin_res = OnlinRe.all
  end

  # GET /onlin_res/1
  # GET /onlin_res/1.json
  def show
  end

  # GET /onlin_res/new
  def new
    @onlin_re = OnlinRe.new
  end

  # GET /onlin_res/1/edit
  def edit
  end

  # POST /onlin_res
  # POST /onlin_res.json
  def create
    @onlin_re = OnlinRe.new(onlin_re_params)

    respond_to do |format|
      if @onlin_re.save
        format.html { redirect_to @onlin_re, notice: 'Onlin re was successfully created.' }
        format.json { render :show, status: :created, location: @onlin_re }
      else
        format.html { render :new }
        format.json { render json: @onlin_re.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /onlin_res/1
  # PATCH/PUT /onlin_res/1.json
  def update
    respond_to do |format|
      if @onlin_re.update(onlin_re_params)
        format.html { redirect_to @onlin_re, notice: 'Onlin re was successfully updated.' }
        format.json { render :show, status: :ok, location: @onlin_re }
      else
        format.html { render :edit }
        format.json { render json: @onlin_re.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onlin_res/1
  # DELETE /onlin_res/1.json
  def destroy
    @onlin_re.destroy
    respond_to do |format|
      format.html { redirect_to onlin_res_url, notice: 'Onlin re was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onlin_re
      @onlin_re = OnlinRe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def onlin_re_params
      params.require(:onlin_re).permit(:Journey_Type, :Departure_City, :Arrival_City, :Departure_Date)
    end
end
