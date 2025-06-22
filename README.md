# 📦 FlexEntregas - Simulador de Estratégias de Entrega

Este projeto foi desenvolvido como parte da disciplina **Paradigmas de Programação**, ministrada pela professora **Luciana Balieiro**.

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

## 📈 Objetivo

Simular diferentes estratégias de entrega, comparando custo, tempo estimado e restrições, de forma flexível e reutilizável.

---

> Trabalho acadêmico apresentado da disciplina **Paradigmas de Programação** – Curso de Ciência da Computação - IFNMG.
