# 📦 FlexEntregas - Simulador de Estratégias de Entrega

Este projeto foi desenvolvido como parte da disciplina **Paradigmas de Programação**, ministrada pela professora **Luciana Balieiro**.

## 📈 Objetivo

Simular diferentes estratégias de entrega, comparando custo, tempo estimado e restrições, de forma flexível e reutilizável.

## 📘 Descrição

A proposta consiste na criação de um sistema para a startup fictícia **FlexEntregas**, que permite **planejar e simular entregas** em diferentes regiões do país, utilizando múltiplos meios de transporte:

- 🚲 Bicicleta
- 🛵 Moto
- 🚁 Drone
- 🐎 Cavalo (para áreas rurais)

Cada meio possui regras e restrições específicas, como por exemplo, drones não operarem em dias de chuva.

## 🧠 Conceitos Aplicados

O projeto foi construído com foco em:

- **Polimorfismo** (via **herança** e **métodos sobrescritos** nas subclasses de veículos)
- **Modularidade** (separação de enums, classes de veículos e lógica de verificação)
- **Extensibilidade** (fácil adição de novos meios de transporte sem alterar a lógica principal)
- **Baixo acoplamento** (cada classe tem responsabilidade única e comunicação por interfaces claras)
- **Testabilidade** (código organizado para facilitar testes unitários)

Esses princípios permitem que novas estratégias de transporte sejam adicionadas ao sistema **sem necessidade de reescrever a lógica principal**, favorecendo a manutenção e evolução do código.

## 🛠️ Decisões de Implementação

- **Ruby** foi escolhido pela clareza sintática e suporte a orientação a objetos.
- Cada tipo de veículo é uma subclasse de `Veiculo`, sobrescrevendo métodos e regras conforme necessário.
- As restrições de cada transporte (ex: clima, zona, peso) são implementadas nos métodos `pode_entregar?` de cada classe.
- Os enums de clima, estrada e zona estão em módulos separados para facilitar manutenção e evitar erros de digitação.
- O método `verifica_entregas` centraliza a lógica de simulação, retornando um resumo dos meios disponíveis, tempo e custo.
- O método `imprime_resultados` utiliza o método `imprime` de cada veículo para exibir informações detalhadas, promovendo reutilização e encapsulamento.
- O código está documentado com comentários RDoc para facilitar entendimento e geração de documentação automática.

## 🚀 Como Executar o Programa

1. Certifique-se de ter o Ruby instalado (versão 2.5 ou superior).
2. No terminal, navegue até a pasta do projeto:
   ```bash
   cd /caminho/para/FlexEntregas
   ```
3. Execute o programa principal:
   ```bash
   ruby main.rb
   ```

## 💡 Exemplo de Saída

```
Simulação de entrega:
Condições: Clima=sol, Estrada=terra, Zona=rural, Distância=30km, Peso=5kg
------------------------------------------------------------
Moto: Disponível!
Informações do tipo de transporte:
	Tipo: Moto
	Combustivel km/litro: 35.0
	Carga maxima: 50.0
	Velocidade média: 60.0 km/h

Informações da entrega:
	Tempo: 0.50h, Custo: R$5.23
```

## 👥 Contribuidores

- [Ana Luiza Nobre](https://github.com/AnaLuizanc)
- [Davi Mendes](https://github.com/odavimendes)
- [Iago Rocha](https://github.com/IagoRochaDev)
- [Pablo Daniel](https://github.com/Kuiapd)
---

> Trabalho acadêmico apresentado da disciplina **Paradigmas de Programação** – Curso de Ciência da Computação - IFNMG.
