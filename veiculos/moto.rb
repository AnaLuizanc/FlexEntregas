require_relative 'veiculo'

# Classe Moto representa um veículo do tipo moto para entregas.
# Herda de Veiculo e implementa regras específicas para motos.
class Moto < Veiculo
  # Verifica se a moto pode realizar a entrega com base na carga máxima.
  # @param status_entrega [StatusEntrega] Objeto contendo informações da entrega, incluindo o peso da carga.
  # @return [Boolean] true se a moto pode entregar, false caso contrário.
  def pode_entregar?(status_entrega)
    @carga_maxima >= status_entrega.peso_carga
  end
end
