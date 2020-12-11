class HomeController < ApplicationController
  def index
    @qtd_funcionarios = Funcionario.count
    @qtd_turnos = Turno.count
    @qtd_remuneracoes = Remuneracao.count
  end
end
