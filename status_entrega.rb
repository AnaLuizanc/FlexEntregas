require_relative 'modulos/import_modulos'

# Classe StatusEntrega representa o status de uma entrega, incluindo informações sobre clima, estrada, zona, distância e peso da carga.
class StatusEntrega
  # @!attribute [rw] clima
  #   @return [String] O clima no momento da entrega (ex: Clima::SOL).
  # @!attribute [rw] estrada
  #   @return [String] O tipo de estrada (ex: Estrada::ASFALTO).
  # @!attribute [rw] zona
  #   @return [String] A zona da entrega (ex: Zona::URBANA).
  # @!attribute [rw] distancia
  #   @return [Numeric] A distância da entrega em quilômetros.
  # @!attribute [rw] peso_carga
  #   @return [Numeric] O peso da carga a ser entregue.
  attr_accessor :clima, :estrada, :zona, :distancia, :peso_carga

  # Inicializa um novo objeto StatusEntrega.
  # @param clima [String] O clima (default: Clima::SOL)
  # @param estrada [String] O tipo de estrada (default: Estrada::ASFALTO)
  # @param zona [String] A zona (default: Zona::URBANA)
  # @param distancia [Numeric] A distância da entrega (default: 1)
  # @param peso_carga [Numeric] O peso da carga (default: 1)
  def initialize(clima=Clima::SOL, estrada=Estrada::ASFALTO, zona=Zona::URBANA, distancia=1, peso_carga = 1)
    @clima = clima
    @estrada = estrada
    @zona = zona
    @distancia = distancia
    @peso_carga = peso_carga
  end
end
