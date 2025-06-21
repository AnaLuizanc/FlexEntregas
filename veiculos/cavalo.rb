# frozen_string_literal: true
#clima, estrada e zona
require_relative 'veiculo'

class Cavalo < Veiculo
   def pode_entregar?(status_entrega)
    @carga_maxima>=status_entrega.peso_carga && status_entrega.zona == 'rural' #Se zona for rural, pode entregar
  end
end