require_relative 'veiculo'

# Classe Cavalo representa um veículo do tipo cavalo para entregas em zonas rurais.
# Herda de Veiculo e implementa regras específicas para cavalos.
class Cavalo < Veiculo
  # Verifica se o cavalo pode realizar a entrega com base na carga máxima e na zona.
  # O cavalo só pode entregar se a zona for 'rural'.
  # @param status_entrega [StatusEntrega] Objeto contendo informações da entrega, incluindo peso da carga e zona.
  # @return [Boolean] true se o cavalo pode entregar, false caso contrário.
  def pode_entregar?(status_entrega)
    @carga_maxima>=status_entrega.peso_carga && status_entrega.zona == 'rural' #Se zona for rural, pode entregar
  end
end