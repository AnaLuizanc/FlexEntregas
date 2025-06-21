# status_entrega.rb
class StatusEntrega
  attr_accessor :clima, :estrada, :zona

  def initialize(clima="sol", estrada="asfalto", zona="urbana")
    @clima = clima
    @estrada = estrada
    @zona = zona
  end
end
