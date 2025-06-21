# frozen_string_literal: true
#clima, estrada e zona
require_relative 'veiculo'

class Voador < Veiculo
   def pode_entregar?(status_entrega)
    @carga_maxima>=status_entrega.peso_carga && !(status_entrega.clima == 'chuvosa' || status_entrega.clima == 'vento_forte') #Se o clima for diferente de chuvoso ou com vento forte, pode entregar
  end
end

#rural, urbana, chuvosa, ensolarada, vento_forte