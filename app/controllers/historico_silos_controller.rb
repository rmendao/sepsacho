class HistoricoSilosController < ApplicationController
  before_action :set_historico_silo, only: [:show, :edit, :update, :destroy]

  # GET /historico_silos
  # GET /historico_silos.json
  def index
    if params[:silos]
      @historico_silos = HistoricoSilo.find_by_sql("select * from Historico_Silos where silo_id in ("+params[:silos]+")")
    else
    @historico_silos = HistoricoSilo.all
      end
  end

  def get_data
      respond_to do |format|
        format.json {
        }
      end
    
  end

  # GET /historico_silos/1
  # GET /historico_silos/1.json
  def show
  end

  # GET /historico_silos/new
  def new
    @historico_silo = HistoricoSilo.new
  end

  # GET /historico_silos/1/edit
  def edit
  end

  # POST /historico_silos
  # POST /historico_silos.json
  def create
    @historico_silo = HistoricoSilo.new(historico_silo_params)

    respond_to do |format|
      if @historico_silo.save
        format.html { redirect_to @historico_silo, notice: 'Historico silo was successfully created.' }
        format.json { render :show, status: :created, location: @historico_silo }
      else
        format.html { render :new }
        format.json { render json: @historico_silo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /historico_silos/1
  # PATCH/PUT /historico_silos/1.json
  def update
    respond_to do |format|
      if @historico_silo.update(historico_silo_params)
        format.html { redirect_to @historico_silo, notice: 'Historico silo was successfully updated.' }
        format.json { render :show, status: :ok, location: @historico_silo }
      else
        format.html { render :edit }
        format.json { render json: @historico_silo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /historico_silos/1
  # DELETE /historico_silos/1.json
  def destroy
    @historico_silo.destroy
    respond_to do |format|
      format.html { redirect_to historico_silos_url, notice: 'Historico silo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_historico_silo
      @historico_silo = HistoricoSilo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def historico_silo_params
      params.require(:historico_silo).permit(:data, :quilograma, :silo_id)
    end

end
