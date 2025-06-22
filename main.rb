require_relative 'status_entrega'
require_relative 'veiculos/import_relatives'
require_relative 'verificador_entrega'

# Cria um objeto com o status da entrega atual
status = StatusEntrega.new(
  "chuva",      # clima
  "terra",      # estrada
  "rural",      # zona
  30,           # distância em km
  5             # peso da carga em kg
)

# Lista dos meios de transporte disponíveis
meios = [
  Moto.new("Moto", 10.0, 50.0, 60.0),         # tipo, consumo, carga_maxima, velocidade_media
  Bicicleta.new("Bicicleta", 0.0, 15.0, 20.0),
  Cavalo.new("Cavalo", 0.0, 40.0, 25.0),
  Voador.new("Drone", 5.0, 3.0, 80.0)
]

# Executa a simulação
resultados = VerificadorEntregas.verifica_entregas(meios, status)

# Exibe os resultados no terminal
puts "Simulação de entrega:"
puts "Condições: Clima=#{status.clima}, Estrada=#{status.estrada}, Zona=#{status.zona}, Distância=#{status.distancia}km, Peso=#{status.peso_carga}kg"
puts "-" * 60

resultados.each do |res|
  if res[:status] == "Disponível o veiculo!!"
    custo = res[:custo] == 0.0 ? "Não se aplica" : "R$#{'%.2f' % res[:custo]}"
    puts "#{res[:meio]}: #{res[:status]}"
    puts "    Tempo: #{'%.2f' % res[:tempo]}h, Custo: #{custo}"
  end
end
