class HistoricoAlarmeSilosController < ApplicationController
  before_action :set_historico_alarme_silo, only: [:show, :edit, :update, :destroy]

  # GET /historico_alarme_silos
  # GET /historico_alarme_silos.json
  def index
    @historico_alarme_silos = HistoricoAlarmeSilo.all
  end

  # GET /historico_alarme_silos/1
  # GET /historico_alarme_silos/1.json
  def show
  end

  # GET /historico_alarme_silos/new
  def new
    @historico_alarme_silo = HistoricoAlarmeSilo.new
  end

  # GET /historico_alarme_silos/1/edit
  def edit
  end

  # POST /historico_alarme_silos
  # POST /historico_alarme_silos.json
  def create
    @historico_alarme_silo = HistoricoAlarmeSilo.new(historico_alarme_silo_params)

    respond_to do |format|
      if @historico_alarme_silo.save
        format.html { redirect_to @historico_alarme_silo, notice: 'Historico alarme silo was successfully created.' }
        format.json { render :show, status: :created, location: @historico_alarme_silo }
      else
        format.html { render :new }
        format.json { render json: @historico_alarme_silo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historico_alarme_silos/1
  # PATCH/PUT /historico_alarme_silos/1.json
  def update
    respond_to do |format|
      if @historico_alarme_silo.update(historico_alarme_silo_params)
        format.html { redirect_to @historico_alarme_silo, notice: 'Historico alarme silo was successfully updated.' }
        format.json { render :show, status: :ok, location: @historico_alarme_silo }
      else
        format.html { render :edit }
        format.json { render json: @historico_alarme_silo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historico_alarme_silos/1
  # DELETE /historico_alarme_silos/1.json
  def destroy
    @historico_alarme_silo.destroy
    respond_to do |format|
      format.html { redirect_to historico_alarme_silos_url, notice: 'Historico alarme silo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historico_alarme_silo
      @historico_alarme_silo = HistoricoAlarmeSilo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historico_alarme_silo_params
      params.require(:historico_alarme_silo).permit(:alarme_silo_id, :date)
    end
end
