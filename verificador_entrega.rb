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
          status: "Disponível!",
          veiculo: meio, # Passa o objeto para acesso ao metodo imprime
        }
      else
        {
          meio: meio.class.name,
          status: "Indisponível!"
        }
      end
    end
  end

  # Imprime os resultados da verificação dos meios de transporte disponíveis para entrega.
  #
  # @param resultados [Array<Hash>] Lista de hashes retornada por .verifica_entregas, contendo o status de cada meio de transporte.
  # @return [void]
  #
  # Para cada meio de transporte disponível, imprime as informações detalhadas do veículo
  # (usando o metodo imprime da classe Veiculo) e os dados da entrega.
  def self.imprime_resultados(resultados)
    resultados.each do |res|
      if res[:status] == "Disponível!"
        custo = res[:custo] == 0.0 ? "Não se aplica" : "R$#{'%.2f' % res[:custo]}"
        puts "#{res[:meio]}: #{res[:status]}"
        res[:veiculo].imprime
        puts "Informações da entrega:"
        puts "\tTempo: #{'%.2f' % res[:tempo]}h, Custo: #{custo}"
        puts
      else
        puts "#{res[:meio]}: #{res[:status]}"
      end
    end
  end
end
