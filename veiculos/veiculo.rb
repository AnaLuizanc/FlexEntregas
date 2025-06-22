# Classe base para veículos utilizados nas entregas.
#
# Esta classe define atributos e métodos comuns a todos os tipos de veículos.
class Veiculo
  # @!attribute [rw] tipo_veiculo
  #   @return [String] O tipo do veículo (ex: "Moto").
  # @!attribute [rw] combustivel_km_por_litro
  #   @return [Float, nil] Consumo de combustível em km/litro, ou nil se não se aplica.
  # @!attribute [rw] carga_maxima
  #   @return [Float] Carga máxima suportada pelo veículo.
  # @!attribute [rw] velocidade_media
  #   @return [Float] Velocidade média do veículo em km/h.
  attr_accessor :tipo_veiculo, :combustivel_km_por_litro, :carga_maxima, :velocidade_media

  # Inicializa um novo veículo.
  # @param tipo_veiculo [String] O tipo do veículo.
  # @param combustivel_km_por_litro [Float, nil] Consumo de combustível em km/litro, ou nil se não se aplica.
  # @param carga_maxima [Float] Carga máxima suportada.
  # @param velocidade_media [Float] Velocidade média em km/h.
  def initialize(tipo_veiculo, combustivel_km_por_litro, carga_maxima, velocidade_media)
    @tipo_veiculo = tipo_veiculo
    @combustivel_km_por_litro = combustivel_km_por_litro
    @carga_maxima = carga_maxima
    @velocidade_media = velocidade_media
  end

  # Calcula o tempo de entrega com base na distância e velocidade média do veículo.
  # @param status_entrega [StatusEntrega] Objeto contendo informações da entrega, incluindo a distância.
  # @return [Float] Tempo estimado de entrega em horas.
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

  # Imprime as informações do veículo, incluindo tipo, consumo, carga máxima e velocidade média.
  # @return [void]
  def imprime
    puts "Informações do tipo de transporte:"
    puts "\tTipo: #{@tipo_veiculo}"
    print "\tCombustivel km/litro: "
    if @combustivel_km_por_litro != nil
      puts "#{@combustivel_km_por_litro}"
    else
      puts "Não se aplica"
    end
    puts "\tCarga maxima: #{@carga_maxima}"
    puts "\tVelocidade média: #{@velocidade_media} km/h"
    puts
  end
end
