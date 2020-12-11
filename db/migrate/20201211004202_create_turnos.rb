class CreateTurnos < ActiveRecord::Migration[6.0]
  def change
    create_table :turnos do |t|
      t.references :funcionario, null: false, foreign_key: true
      t.datetime :entrada
      t.datetime :saida

      t.timestamps
    end
  end
end
