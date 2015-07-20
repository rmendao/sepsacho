class ExploracaosController < ApplicationController
  before_action :set_exploracao, only: [:show, :edit, :update, :destroy]

  # GET /exploracaos
  # GET /exploracaos.json
  def index
    @exploracaos = Exploracao.all
  end

  # GET /exploracaos/1
  # GET /exploracaos/1.json
  def show
  end

  # GET /exploracaos/new
  def new
    @exploracao = Exploracao.new
  end

  # GET /exploracaos/1/edit
  def edit
  end

  # POST /exploracaos
  # POST /exploracaos.json
  def create
    @exploracao = Exploracao.new(exploracao_params)

    respond_to do |format|
      if @exploracao.save
        format.html { redirect_to @exploracao, notice: 'Exploracao was successfully created.' }
        format.json { render :show, status: :created, location: @exploracao }
      else
        format.html { render :new }
        format.json { render json: @exploracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exploracaos/1
  # PATCH/PUT /exploracaos/1.json
  def update
    respond_to do |format|
      if @exploracao.update(exploracao_params)
        format.html { redirect_to @exploracao, notice: 'Exploracao was successfully updated.' }
        format.json { render :show, status: :ok, location: @exploracao }
      else
        format.html { render :edit }
        format.json { render json: @exploracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exploracaos/1
  # DELETE /exploracaos/1.json
  def destroy
    @exploracao.destroy
    respond_to do |format|
      format.html { redirect_to exploracaos_url, notice: 'Exploracao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exploracao
      @exploracao = Exploracao.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exploracao_params
      params.require(:exploracao).permit(:localizacao, :nome, :tipo)
    end
end
