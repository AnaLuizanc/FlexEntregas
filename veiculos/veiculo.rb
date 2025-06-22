# Classe base para veículos utilizados nas entregas.
class Veiculo
  attr_accessor :tipo_veiculo, :combustivel_km_por_litro, :carga_maxima, :velocidade_media
  def initialize(tipo_veiculo, combustivel_km_por_litro, carga_maxima, velocidade_media)
    @tipo_veiculo = tipo_veiculo
    @combustivel_km_por_litro = combustivel_km_por_litro
    @carga_maxima = carga_maxima
    @velocidade_media = velocidade_media
  end

  # Calcula o tempo de entrega com base na distância e velocidade média do veículo.
  # @param status_entrega [StatusEntrega] Objeto contendo informações da entrega, incluindo a distância.
  # @return [Float] Tempo estimado de entrega.
  def tempo(status_entrega)
    status_entrega.distancia/@velocidade_media
  end

  # Calcula o valor da viagem considerando o consumo de combustível.
  # Para veículos que não utilizam combustível, retorna 0.0.
  # @param status_entrega [StatusEntrega] Objeto contendo informações da entrega, incluindo a distância.
  # @return [Float] Valor estimado da viagem.
  def valor_viagem(status_entrega)
    if @combustivel_km_por_litro.nil? || @combustivel_km_por_litro == 0.0
      0.0 # Bicicleta e Cavalo não usam combustível
    else
      (status_entrega.distancia/@combustivel_km_por_litro)*6.10
    end
  end

  # Imprime as informações do veículo, incluindo tipo, consumo, carga máxima, valor da viagem e tempo de entrega.
  # @return [void]
  def imprime
    puts "Tipo: #{@tipo_veiculo}"
    print "Combustivel km/litro: "
    if @combustivel_km_por_litro != nil
      puts "#{@combustivel_km_por_litro}"
    else
      puts "Não se aplica"
    end
    puts "Carga maxima: #{@carga_maxima}"
    puts "Valor da viagem: #{valor_viagem}"
    puts "Tempo de entrega: #{tempo}"
  end
end
