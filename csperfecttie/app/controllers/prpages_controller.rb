class PrpagesController < ApplicationController
  before_action :set_prpage, only: [:show, :edit, :update, :destroy]

  # GET /prpages
  # GET /prpages.json
  def index
    @prpages = Prpage.all
  end

  # GET /prpages/1
  # GET /prpages/1.json
  def show
  end

  # GET /prpages/new
  def new
    @prpage = Prpage.new
  end

  # GET /prpages/1/edit
  def edit
  end

  # POST /prpages
  # POST /prpages.json
  def create
    @prpage = Prpage.new(prpage_params)

    respond_to do |format|
      if @prpage.save
        format.html { redirect_to @prpage, notice: 'Prpage was successfully created.' }
        format.json { render :show, status: :created, location: @prpage }
      else
        format.html { render :new }
        format.json { render json: @prpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /prpages/1
  # PATCH/PUT /prpages/1.json
  def update
    respond_to do |format|
      if @prpage.update(prpage_params)
        format.html { redirect_to @prpage, notice: 'Prpage was successfully updated.' }
        format.json { render :show, status: :ok, location: @prpage }
      else
        format.html { render :edit }
        format.json { render json: @prpage.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /prpages/1
  # DELETE /prpages/1.json
  def destroy
    @prpage.destroy
    respond_to do |format|
      format.html { redirect_to prpages_url, notice: 'Prpage was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prpage
      @prpage = Prpage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def prpage_params
      params.require(:prpage).permit(:name, :address, :city, :state, :zipcode, :email, :methodofcom, :phone, :suitsize, :preferedcolor, :style, :shirtsize, :shoesize, :hatsize, :birthday, :anniversary, :ordernumber, :orderdetails, :cost)
    end
end
