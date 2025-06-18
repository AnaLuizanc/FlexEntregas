# frozen_string_literal: true
require_relative 'veiculo'

def cria_veiculos
  veiculos = [
    Veiculo.new("moto", 40, 40),
    Veiculo.new("carro", 6, 100),
    Veiculo.new("drone", nil, 20),
    Veiculo.new("cavalo", nil, 20),
    Veiculo.new("caminhão", 3, 10000),
    Veiculo.new("bicicleta", nil, 20)
  ]
end
