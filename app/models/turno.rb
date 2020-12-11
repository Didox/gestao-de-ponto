class Turno < ApplicationRecord
  belongs_to :funcionario
  validates :entrada, :saida, presence: true
end
