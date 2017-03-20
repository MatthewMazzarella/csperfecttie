class PpagesController < ApplicationController
  before_action :set_ppage, only: [:show, :edit, :update, :destroy]

  # GET /ppages
  # GET /ppages.json
  def index
    @ppages = Ppage.all
  end

  # GET /ppages/1
  # GET /ppages/1.json
  def show
  end

  # GET /ppages/new
  def new
    @ppage = Ppage.new
  end

  # GET /ppages/1/edit
  def edit
  end

  # POST /ppages
  # POST /ppages.json
  def create
    @ppage = Ppage.new(ppage_params)

    respond_to do |format|
      if @ppage.save
        format.html { redirect_to @ppage, notice: 'Ppage was successfully created.' }
        format.json { render :show, status: :created, location: @ppage }
      else
        format.html { render :new }
        format.json { render json: @ppage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ppages/1
  # PATCH/PUT /ppages/1.json
  def update
    respond_to do |format|
      if @ppage.update(ppage_params)
        format.html { redirect_to @ppage, notice: 'Ppage was successfully updated.' }
        format.json { render :show, status: :ok, location: @ppage }
      else
        format.html { render :edit }
        format.json { render json: @ppage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ppages/1
  # DELETE /ppages/1.json
  def destroy
    @ppage.destroy
    respond_to do |format|
      format.html { redirect_to ppages_url, notice: 'Ppage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ppage
      @ppage = Ppage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ppage_params
      params.require(:ppage).permit(:name, :address, :city, :state, :zipcode, :email, :methodofcom, :phone, :suitsize, :preferedcolor, :style, :shirtsize, :shoesize, :hatsize, :birthday, :anniversary, :ordernumber, :orderdetails, :cost)
    end
end
