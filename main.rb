require_relative 'veiculo_creator'

veiculos = cria_veiculos

veiculos.each_with_index do |veiculo|
  veiculo.imprime
  puts "-" * 30
end