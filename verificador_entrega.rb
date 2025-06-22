class VerificadorEntregas
  def self.verifica_entregas(meios, status_entrega)
    meios.map do |meio|
      if meio.pode_entregar?(status_entrega)
        {
          meio: meio.class.name,
          tempo: meio.tempo(status_entrega),
          custo: meio.valor_viagem(status_entrega),
          #carga_max: meio.carga_maxima(status_entrega),
          status: "Disponível!"
        }
      else
        {
          meio: meio.class.name,
          status: "Indisponível!"
        }
      end
    end
  end
end
