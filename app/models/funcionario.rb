class Funcionario < ApplicationRecord
  validates :nome, presence: true

  def dias_trabalhados
    Turno.where(funcionario_id: self.id).where("EXTRACT(MONTH FROM entrada) = ?", Time.zone.now.month).count
  end
  
  def valor_receber
    salario = Remuneracao.where(funcionario_id: self.id).first.salario rescue 0
    return 0 if salario < 0.1
    
    salario_dia = salario / 22

    salario_hora = salario_dia / 8

    self.dias_trabalhados * salario_dia
  end
end
