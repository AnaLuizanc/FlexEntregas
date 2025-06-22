# Classe utilitária para verificar quais meios de transporte estão disponíveis para uma entrega.
class VerificadorEntregas
  # Verifica a disponibilidade dos meios de transporte para uma entrega.
  #
  # @param meios [Array<Veiculo>] Lista de objetos de veículos a serem verificados.
  # @param status_entrega [StatusEntrega] Objeto com as informações da entrega.
  # @return [Array<Hash>] Lista de hashes com o status de cada meio de transporte.
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
