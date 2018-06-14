class RhsController < ApplicationController
  before_action :set_rh, only: [:show, :edit, :update, :destroy]

  # GET /rhs
  # GET /rhs.json
  def index

    if params[:search]
      @rhs = Rh.search(params[:search]) 
    else     
    @rhs = Rh.order("Nome")
    end

  end

  # GET /rhs/1
  # GET /rhs/1.json
  def show
  end

  # GET /rhs/new
  def new
    @rh = Rh.new
  end

  # GET /rhs/1/edit
  def edit
  end

  # POST /rhs
  # POST /rhs.json
  def create
    @rh = Rh.new(rh_params)

    respond_to do |format|
      if @rh.save
        format.html { redirect_to @rh, notice: 'Rh was successfully created.' }
        format.json { render action: 'show', status: :created, location: @rh }
      else
        format.html { render action: 'new' }
        format.json { render json: @rh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rhs/1
  # PATCH/PUT /rhs/1.json
  def update
    respond_to do |format|
      if @rh.update(rh_params)
        format.html { redirect_to @rh, notice: 'Rh was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @rh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rhs/1
  # DELETE /rhs/1.json
  def destroy
    @rh.destroy
    respond_to do |format|
      format.html { redirect_to rhs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rh
      @rh = Rh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rh_params
      params.require(:rh).permit(:Matricula, :Nome, :Telefone, :Celular, :Email,:Nascimento, :MunicipioDeNascimento, :EstadoDeNascimento, :EstadoCivil, :Sexo, :LotacaoDeTrabalho, :Cargo)
    end
end
