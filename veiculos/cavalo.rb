# frozen_string_literal: true
#clima, estrada e zona
require_relative 'veiculo'

class Cavalo < Veiculo
  def initialize(carga_maxima)
    @carga_maxima = carga_maxima
    @combustivel_km_por_litro = nil
  end
   def pode_entregar?(status_entrega)
    @carga_maxima>=status_entrega.peso_carga && status_entrega.zona == 'rural' #Se zona for rural, pode entregar
  end
end