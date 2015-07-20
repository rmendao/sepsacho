class AlarmeSilosController < ApplicationController
  before_action :set_alarme_silo, only: [:show, :edit, :update, :destroy]

  # GET /alarme_silos
  # GET /alarme_silos.json
  def index
    @alarme_silos = AlarmeSilo.all
  end

  # GET /alarme_silos/1
  # GET /alarme_silos/1.json
  def show
  end

  # GET /alarme_silos/new
  def new
    @alarme_silo = AlarmeSilo.new
  end

  # GET /alarme_silos/1/edit
  def edit
  end

  # POST /alarme_silos
  # POST /alarme_silos.json
  def create
    @alarme_silo = AlarmeSilo.new(alarme_silo_params)

    respond_to do |format|
      if @alarme_silo.save
        format.html { redirect_to @alarme_silo, notice: 'Alarme silo was successfully created.' }
        format.json { render :show, status: :created, location: @alarme_silo }
      else
        format.html { render :new }
        format.json { render json: @alarme_silo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alarme_silos/1
  # PATCH/PUT /alarme_silos/1.json
  def update
    respond_to do |format|
      if @alarme_silo.update(alarme_silo_params)
        format.html { redirect_to @alarme_silo, notice: 'Alarme silo was successfully updated.' }
        format.json { render :show, status: :ok, location: @alarme_silo }
      else
        format.html { render :edit }
        format.json { render json: @alarme_silo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alarme_silos/1
  # DELETE /alarme_silos/1.json
  def destroy
    @alarme_silo.destroy
    respond_to do |format|
      format.html { redirect_to alarme_silos_url, notice: 'Alarme silo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alarme_silo
      @alarme_silo = AlarmeSilo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alarme_silo_params
      params.require(:alarme_silo).permit(:alarme_id, :silo_id, :tipo)
    end
end
