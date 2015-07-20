class UserSilosController < ApplicationController
  before_action :set_user_silo, only: [:show, :edit, :update, :destroy]

  # GET /user_silos
  # GET /user_silos.json
  def index
    @user_silos = UserSilo.all
  end

  # GET /user_silos/1
  # GET /user_silos/1.json
  def show
  end

  # GET /user_silos/new
  def new
    @user_silo = UserSilo.new
  end

  # GET /user_silos/1/edit
  def edit
  end

  # POST /user_silos
  # POST /user_silos.json
  def create
    @user_silo = UserSilo.new(user_silo_params)

    respond_to do |format|
      if @user_silo.save
        format.html { redirect_to @user_silo, notice: 'User silo was successfully created.' }
        format.json { render :show, status: :created, location: @user_silo }
      else
        format.html { render :new }
        format.json { render json: @user_silo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_silos/1
  # PATCH/PUT /user_silos/1.json
  def update
    respond_to do |format|
      if @user_silo.update(user_silo_params)
        format.html { redirect_to @user_silo, notice: 'User silo was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_silo }
      else
        format.html { render :edit }
        format.json { render json: @user_silo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_silos/1
  # DELETE /user_silos/1.json
  def destroy
    @user_silo.destroy
    respond_to do |format|
      format.html { redirect_to user_silos_url, notice: 'User silo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_silo
      @user_silo = UserSilo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_silo_params
      params.require(:user_silo).permit(:nome, :empresa, :contato, :rfid)
    end
end
