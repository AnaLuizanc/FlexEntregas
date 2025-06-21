# frozen_string_literal: true
#clima, estrada e zona
require_relative 'veiculo'

class Bicicleta < Veiculo

   def pode_entregar?(status_entrega)
    @carga_maxima>=status_entrega.peso_carga && !(status_entrega.clima == 'chuvosa')
  end
end

#rural, urbana, chuvosa, ensolarada, vento_forte