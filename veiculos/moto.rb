# frozen_string_literal: true
#clima, estrada e zona
require_relative 'veiculo'

class Moto < Veiculo
  def initialize(carga_maxima)
    @carga_maxima = carga_maxima
  end
   def pode_entregar?(status_entrega)
    @carga_maxima>=status_entrega.peso_carga 
  end
end

#rural, urbana, chuvosa, ensolarada, vento_forte