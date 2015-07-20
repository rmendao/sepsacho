class CarregamentosController < ApplicationController
  before_action :set_carregamento, only: [:show, :edit, :update, :destroy]

  # GET /carregamentos
  # GET /carregamentos.json
  def index
    @carregamentos = Carregamento.all
  end

  # GET /carregamentos/1
  # GET /carregamentos/1.json
  def show
  end

  # GET /carregamentos/new
  def new
    @carregamento = Carregamento.new
  end

  # GET /carregamentos/1/edit
  def edit
  end

  # POST /carregamentos
  # POST /carregamentos.json
  def create
    @carregamento = Carregamento.new(carregamento_params)

    respond_to do |format|
      if @carregamento.save
        format.html { redirect_to @carregamento, notice: 'Carregamento was successfully created.' }
        format.json { render :show, status: :created, location: @carregamento }
      else
        format.html { render :new }
        format.json { render json: @carregamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carregamentos/1
  # PATCH/PUT /carregamentos/1.json
  def update
    respond_to do |format|
      if @carregamento.update(carregamento_params)
        format.html { redirect_to @carregamento, notice: 'Carregamento was successfully updated.' }
        format.json { render :show, status: :ok, location: @carregamento }
      else
        format.html { render :edit }
        format.json { render json: @carregamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carregamentos/1
  # DELETE /carregamentos/1.json
  def destroy
    @carregamento.destroy
    respond_to do |format|
      format.html { redirect_to carregamentos_url, notice: 'Carregamento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carregamento
      @carregamento = Carregamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carregamento_params
      params.require(:carregamento).permit(:silo_id, :user_silo_id, :data, :farinha, :quilograma)
    end
end
