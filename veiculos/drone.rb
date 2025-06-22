require_relative 'veiculo'

# Classe Drone representa um veículo voador (drone) para entregas.
# Herda de Veiculo e implementa regras específicas para drones.
class Drone < Veiculo
  # Verifica se o drone pode realizar a entrega com base na carga máxima e nas condições climáticas.
  # O drone não pode entregar se o clima for 'chuvosa' ou 'vento_forte'.
  # @param status_entrega [StatusEntrega] Objeto contendo informações da entrega, incluindo peso da carga e clima.
  # @return [Boolean] true se o drone pode entregar, false caso contrário.
  def pode_entregar?(status_entrega)
    @carga_maxima>=status_entrega.peso_carga && !(status_entrega.clima == 'chuvosa' || status_entrega.clima == 'vento_forte')
  end
end
