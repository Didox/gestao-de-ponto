class TurnosController < ApplicationController
  before_action :set_turno, only: [:show, :edit, :update, :destroy]

  # GET /turnos
  # GET /turnos.json
  def index
    @turnos = Turno.all
    if params[:funcionario_id].present?
      @turnos = @turnos.where(funcionario_id: params[:funcionario_id])
    end
  end

  # GET /turnos/1
  # GET /turnos/1.json
  def show
  end

  # GET /turnos/new
  def new
    @turno = Turno.new
  end

  # GET /turnos/1/edit
  def edit
  end

  # POST /turnos
  # POST /turnos.json
  def create
    @turno = Turno.new(turno_params)

    respond_to do |format|
      if @turno.save
        format.html { redirect_to @turno, notice: 'Turno foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @turno }
      else
        format.html { render :new }
        format.json { render json: @turno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /turnos/1
  # PATCH/PUT /turnos/1.json
  def update
    respond_to do |format|
      if @turno.update(turno_params)
        format.html { redirect_to @turno, notice: 'Turno foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @turno }
      else
        format.html { render :edit }
        format.json { render json: @turno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /turnos/1
  # DELETE /turnos/1.json
  def destroy
    @turno.destroy
    respond_to do |format|
      format.html { redirect_to turnos_url, notice: 'Turno foi apagado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_turno
      @turno = Turno.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def turno_params
      params.require(:turno).permit(:funcionario_id, :entrada, :saida)
    end
end
