# status_entrega.rb
class StatusEntrega
  attr_accessor :clima, :estrada, :zona, :distancia, :peso_carga

  def initialize(clima="sol", estrada="asfalto", zona="urbana", distancia=1, peso_carga = 1)
    @clima = clima
    @estrada = estrada
    @zona = zona
    @distancia = distancia
    @peso_carga = peso_carga
  end
end
