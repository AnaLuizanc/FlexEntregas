# frozen_string_literal: true

class Veiculo
  attr_accessor :tipo_veiculo, :combustivel_km_por_litro, :carga_maxima

  def initialize(tipo_veiculo, combustivel_km_por_litro, carga_maxima)
    @tipo_veiculo = tipo_veiculo
    @combustivel_km_por_litro = combustivel_km_por_litro
    @carga_maxima = carga_maxima
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
  end
end
