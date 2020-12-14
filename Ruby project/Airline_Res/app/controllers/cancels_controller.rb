class CancelsController < ApplicationController
  before_action :set_cancel, only: [:show, :edit, :update, :destroy]

  # GET /cancels
  # GET /cancels.json
  def index
    @cancels = Cancel.all
  end

  # GET /cancels/1
  # GET /cancels/1.json
  def show
  end

  # GET /cancels/new
  def new
    @cancel = Cancel.new
  end

  # GET /cancels/1/edit
  def edit
  end

  # POST /cancels
  # POST /cancels.json
  def create
    @cancel = Cancel.new(cancel_params)

    respond_to do |format|
      if @cancel.save
        format.html { redirect_to @cancel, notice: 'Cancel was successfully created.' }
        format.json { render :show, status: :created, location: @cancel }
      else
        format.html { render :new }
        format.json { render json: @cancel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cancels/1
  # PATCH/PUT /cancels/1.json
  def update
    respond_to do |format|
      if @cancel.update(cancel_params)
        format.html { redirect_to @cancel, notice: 'Cancel was successfully updated.' }
        format.json { render :show, status: :ok, location: @cancel }
      else
        format.html { render :edit }
        format.json { render json: @cancel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cancels/1
  # DELETE /cancels/1.json
  def destroy
    @cancel.destroy
    respond_to do |format|
      format.html { redirect_to cancels_url, notice: 'Cancel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cancel
      @cancel = Cancel.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cancel_params
      params.require(:cancel).permit(:E_Tickit_No, :integer)
    end
end
