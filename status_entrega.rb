# status_entrega.rb
class StatusEntrega
  attr_accessor :clima, :estrada, :zona, :distancia

  def initialize(clima="sol", estrada="asfalto", zona="urbana", distancia=0)
    @clima = clima
    @estrada = estrada
    @zona = zona
    @distancia = distancia
  end
end
