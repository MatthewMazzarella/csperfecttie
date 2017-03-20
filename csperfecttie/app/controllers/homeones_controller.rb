class HomeonesController < ApplicationController
  before_action :set_homeone, only: [:show, :edit, :update, :destroy]

  # GET /homeones
  # GET /homeones.json
  def index
    @homeones = Homeone.all
  end

  # GET /homeones/1
  # GET /homeones/1.json
  def show
  end

  # GET /homeones/new
  def new
    @homeone = Homeone.new
  end

  # GET /homeones/1/edit
  def edit
  end

  # POST /homeones
  # POST /homeones.json
  def create
    @homeone = Homeone.new(homeone_params)

    respond_to do |format|
      if @homeone.save
        format.html { redirect_to @homeone, notice: 'Homeone was successfully created.' }
        format.json { render :show, status: :created, location: @homeone }
      else
        format.html { render :new }
        format.json { render json: @homeone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /homeones/1
  # PATCH/PUT /homeones/1.json
  def update
    respond_to do |format|
      if @homeone.update(homeone_params)
        format.html { redirect_to @homeone, notice: 'Homeone was successfully updated.' }
        format.json { render :show, status: :ok, location: @homeone }
      else
        format.html { render :edit }
        format.json { render json: @homeone.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /homeones/1
  # DELETE /homeones/1.json
  def destroy
    @homeone.destroy
    respond_to do |format|
      format.html { redirect_to homeones_url, notice: 'Homeone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homeone
      @homeone = Homeone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def homeone_params
      params.fetch(:homeone, {})
    end
end
