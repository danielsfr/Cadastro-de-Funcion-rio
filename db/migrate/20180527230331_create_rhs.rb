class CreateRhs < ActiveRecord::Migration
  def change
    create_table :rhs do |t|
      t.number :Matricula
      t.string :Nome
      t.datetime :Nascimento
      t.string :MunicipioDeNascimento
      t.string :EstadoDeNascimento
      t.string :EstadoCivil
      t.string :Sexo
      t.string :LotacaoDeTrabalho
      t.string :Cargo

      t.timestamps
    end
  end
end
