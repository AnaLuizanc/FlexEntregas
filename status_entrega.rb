# status_entrega.rb
require_relative 'modulos/import_modulos'

class StatusEntrega
  attr_accessor :clima, :estrada, :zona, :distancia, :peso_carga

  def initialize(clima=Clima::SOL, estrada=Estrada::ASFALTO, zona=Zona::URBANA, distancia=1, peso_carga = 1)
    @clima = clima
    @estrada = estrada
    @zona = zona
    @distancia = distancia
    @peso_carga = peso_carga
  end
end
