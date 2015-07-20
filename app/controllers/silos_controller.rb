class SilosController < ApplicationController
  before_action :set_silo, only: [:show, :edit, :update, :destroy]

  # GET /silos
  # GET /silos.json
  def index

    if params[:exploracao_id]
      @silos = Silo.where(exploracao_id:params[:exploracao_id])
    else
      @silos = Silo.all
    end
  end

  # GET /silos/1
  # GET /silos/1.json
  def show
  end

  # GET /silos/new
  def new
    @silo = Silo.new
  end

  # GET /silos/1/edit
  def edit
  end

  # POST /silos
  # POST /silos.json
  def create
    @silo = Silo.new(silo_params)

    respond_to do |format|
      if @silo.save
        format.html { redirect_to @silo, notice: 'Silo was successfully created.' }
        format.json { render :show, status: :created, location: @silo }
      else
        format.html { render :new }
        format.json { render json: @silo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /silos/1
  # PATCH/PUT /silos/1.json
  def update
    respond_to do |format|
      if @silo.update(silo_params)
        format.html { redirect_to @silo, notice: 'Silo was successfully updated.' }
        format.json { render :show, status: :ok, location: @silo }
      else
        format.html { render :edit }
        format.json { render json: @silo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /silos/1
  # DELETE /silos/1.json
  def destroy
    @silo.destroy
    respond_to do |format|
      format.html { redirect_to silos_url, notice: 'Silo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_silo
      @silo = Silo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def silo_params
      params.require(:silo).permit(:capacidade, :tipo, :exploracao_id)
    end
end
