# Script principal para simulação de entregas com diferentes meios de transporte.
#
# Este arquivo executa uma simulação de entrega, utilizando as classes de veículos e o verificador de entregas.
#
# Exemplos de uso:
#   ruby main.rb
#
# O script cria um objeto StatusEntrega, define os meios de transporte disponíveis,
# executa a verificação de quais podem realizar a entrega e exibe os resultados no terminal.

require_relative 'status_entrega'
require_relative 'veiculos/import_relatives'
require_relative 'verificador_entrega'

# Cria um objeto com o status da entrega atual
status = StatusEntrega.new(
  "sol",        # clima
  "terra",      # estrada
  "rural",      # zona
  30,           # distância em km
  5             # peso da carga em kg
)

# Lista dos meios de transporte disponíveis
# Cada meio de transporte é instanciado com seus atributos específicos:
# tipo, consumo_combustível_km_por_litro, carga máxima e velocidade média.
meios = [
  Moto.new("Moto", 35.0, 50.0, 60.0),
  Bicicleta.new("Bicicleta", nil, 20.0, 15.0),
  Cavalo.new("Cavalo", nil, 40.0, 15.0),
  Drone.new("Drone", nil, 10.0, 70.0)
]

# Executa a simulação
resultados = VerificadorEntregas.verifica_entregas(meios, status)

# Exibe os resultados no terminal
puts "Simulação de entrega:"
puts "Condições: Clima=#{status.clima}, Estrada=#{status.estrada}, Zona=#{status.zona}, Distância=#{status.distancia}km, Peso=#{status.peso_carga}kg"
puts "-" * 60

# Imprime os resultados da verificação de entregas
VerificadorEntregas.imprime_resultados(resultados)
