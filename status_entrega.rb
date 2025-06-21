# status_entrega.rb
class StatusEntrega
  attr_accessor :clima, :estrada, :zona, :distancia, :pose_carga

  def initialize(clima="sol", estrada="asfalto", zona="urbana", distancia=0, peso_carga = 0)
    @clima = clima
    @estrada = estrada
    @zona = zona
    @distancia = distancia
    @peso_carga = peso_carga
  end
end
