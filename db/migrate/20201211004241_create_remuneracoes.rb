class CreateRemuneracoes < ActiveRecord::Migration[6.0]
  def change
    create_table :remuneracoes do |t|
      t.references :funcionario, null: false, foreign_key: true
      t.float :salario

      t.timestamps
    end
  end
end
