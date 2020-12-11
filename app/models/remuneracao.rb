class Remuneracao < ApplicationRecord
  belongs_to :funcionario
  validates :salario, presence: true
end
