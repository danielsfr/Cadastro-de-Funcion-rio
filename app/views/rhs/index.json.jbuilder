json.array!(@rhs) do |rh|
  json.extract! rh, :id, :Matricula, :Nome, :Nascimento, :MunicipioDeNascimento, :EstadoDeNascimento, :EstadoCivil, :Sexo, :LotacaoDeTrabalho, :Cargo
  json.url rh_url(rh, format: :json)
end
