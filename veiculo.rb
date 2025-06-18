# frozen_string_literal: true

class Veiculo
  attr_accessor :tipo_veiculo, :combustivel_km_por_litro, :carga_maxima

  def initialize(tipo_veiculo, combustivel_km_por_litro, carga_maxima)
    @tipo_veiculo = tipo_veiculo
    @combustivel_km_por_litro = combustivel_km_por_litro
    @carga_maxima = carga_maxima
  end
end
