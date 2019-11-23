class PropetiesController < ApplicationController
  before_action :set_propety, only: [:show, :edit, :update, :destroy]

  # GET /propeties
  # GET /propeties.json
  def index
    @propeties = Propety.all
  end

  # GET /propeties/1
  # GET /propeties/1.json
  def show
  end

  # GET /propeties/new
  def new
    @propety = Propety.new
  end

  # GET /propeties/1/edit
  def edit
  end

  # POST /propeties
  # POST /propeties.json
  def create
    @propety = Propety.new(propety_params)

    respond_to do |format|
      if @propety.save
        format.html { redirect_to @propety, notice: 'Propety was successfully created.' }
        format.json { render :show, status: :created, location: @propety }
      else
        format.html { render :new }
        format.json { render json: @propety.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propeties/1
  # PATCH/PUT /propeties/1.json
  def update
    respond_to do |format|
      if @propety.update(propety_params)
        format.html { redirect_to @propety, notice: 'Propety was successfully updated.' }
        format.json { render :show, status: :ok, location: @propety }
      else
        format.html { render :edit }
        format.json { render json: @propety.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propeties/1
  # DELETE /propeties/1.json
  def destroy
    @propety.destroy
    respond_to do |format|
      format.html { redirect_to propeties_url, notice: 'Propety was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propety
      @propety = Propety.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propety_params
      params.require(:propety).permit(:property, :rent, :adress, :building, :remark)
    end
end
