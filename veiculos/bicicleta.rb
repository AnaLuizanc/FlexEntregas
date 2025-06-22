require_relative 'veiculo'

# Classe Bicicleta representa um veículo do tipo bicicleta para entregas.
# Herda de Veiculo e implementa regras específicas para bicicletas.
class Bicicleta < Veiculo
  # Verifica se a bicicleta pode realizar a entrega com base na carga máxima e nas condições climáticas.
  # A bicicleta não pode entregar se o clima for 'chuvosa'.
  # @param status_entrega [StatusEntrega] Objeto contendo informações da entrega, incluindo peso da carga e clima.
  # @return [Boolean] true se a bicicleta pode entregar, false caso contrário.
  def pode_entregar?(status_entrega)
    @carga_maxima>=status_entrega.peso_carga && !(status_entrega.clima == 'chuvosa')
  end
end
