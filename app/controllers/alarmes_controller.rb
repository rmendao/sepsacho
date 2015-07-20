class AlarmesController < ApplicationController
  before_action :set_alarme, only: [:show, :edit, :update, :destroy]

  # GET /alarmes
  # GET /alarmes.json
  def index
    @alarmes = Alarme.all
  end

  # GET /alarmes/1
  # GET /alarmes/1.json
  def show
  end

  # GET /alarmes/new
  def new
    @alarme = Alarme.new
  end

  # GET /alarmes/1/edit
  def edit
  end

  # POST /alarmes
  # POST /alarmes.json
  def create
    @alarme = Alarme.new(alarme_params)

    respond_to do |format|
      if @alarme.save
        format.html { redirect_to @alarme, notice: 'Alarme was successfully created.' }
        format.json { render :show, status: :created, location: @alarme }
      else
        format.html { render :new }
        format.json { render json: @alarme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /alarmes/1
  # PATCH/PUT /alarmes/1.json
  def update
    respond_to do |format|
      if @alarme.update(alarme_params)
        format.html { redirect_to @alarme, notice: 'Alarme was successfully updated.' }
        format.json { render :show, status: :ok, location: @alarme }
      else
        format.html { render :edit }
        format.json { render json: @alarme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /alarmes/1
  # DELETE /alarmes/1.json
  def destroy
    @alarme.destroy
    respond_to do |format|
      format.html { redirect_to alarmes_url, notice: 'Alarme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_alarme
      @alarme = Alarme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def alarme_params
      params.require(:alarme).permit(:tipo, :limite, :acao)
    end
end
