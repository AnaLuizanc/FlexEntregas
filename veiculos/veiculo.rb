# frozen_string_literal: true

#clima, estrada e zona

class Veiculo
  attr_accessor :tipo_veiculo, :combustivel_km_por_litro, :carga_maxima, :velocidade_media
  def initialize(tipo_veiculo, combustivel_km_por_litro, carga_maxima, velocidade_media)
    @tipo_veiculo = tipo_veiculo
    @combustivel_km_por_litro = combustivel_km_por_litro
    @carga_maxima = carga_maxima
    @velocidade_media = velocidade_media
  end

  def tempo(status_entrega)
    status_entrega.distancia/@velocidade_media
  end

  def valor_viagem(status_entrega)
      (status_entrega.distancia/@combustivel_km_por_litro)*6.10
  end

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
