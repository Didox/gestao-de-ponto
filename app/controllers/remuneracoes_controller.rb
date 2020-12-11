class RemuneracoesController < ApplicationController
  before_action :set_remuneracao, only: [:show, :edit, :update, :destroy]

  # GET /remuneracoes
  # GET /remuneracoes.json
  def index
    @remuneracoes = Remuneracao.all
  end

  # GET /remuneracoes/1
  # GET /remuneracoes/1.json
  def show
  end

  # GET /remuneracoes/new
  def new
    @remuneracao = Remuneracao.new
  end

  # GET /remuneracoes/1/edit
  def edit
  end

  # POST /remuneracoes
  # POST /remuneracoes.json
  def create
    @remuneracao = Remuneracao.new(remuneracao_params)

    respond_to do |format|
      if @remuneracao.save
        format.html { redirect_to @remuneracao, notice: 'Remuneracao was successfully created.' }
        format.json { render :show, status: :created, location: @remuneracao }
      else
        format.html { render :new }
        format.json { render json: @remuneracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /remuneracoes/1
  # PATCH/PUT /remuneracoes/1.json
  def update
    respond_to do |format|
      if @remuneracao.update(remuneracao_params)
        format.html { redirect_to @remuneracao, notice: 'Remuneracao was successfully updated.' }
        format.json { render :show, status: :ok, location: @remuneracao }
      else
        format.html { render :edit }
        format.json { render json: @remuneracao.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /remuneracoes/1
  # DELETE /remuneracoes/1.json
  def destroy
    @remuneracao.destroy
    respond_to do |format|
      format.html { redirect_to remuneracoes_url, notice: 'Remuneracao was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_remuneracao
      @remuneracao = Remuneracao.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def remuneracao_params
      params.require(:remuneracao).permit(:funcionario_id, :salario)
    end
end
