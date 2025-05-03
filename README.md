# ABAP_MVC_01
# 🧠 Relatório MVC Simples em ABAP com SPFLI

Este é o primeiro programa publicado neste repositório com o objetivo de compartilhar conhecimento ABAP de forma prática e acessível. O projeto implementa o padrão **MVC (Model-View-Controller)** em um relatório simples utilizando a tabela de voos **SPFLI**.

## 📌 Descrição

O projeto consiste em um relatório local criado na **SE38** com estrutura modularizada via *includes*. Ele exibe os dados da SPFLI de forma organizada e separa as responsabilidades do código, seguindo o padrão MVC.

> ⚠️ **Observação:** Neste exemplo, **não foi implementado o botão "Atualizar"**. O foco está na estrutura básica do padrão MVC para relatórios locais no ABAP, ficando para uma versão posterior a implementação do evento.
> 
## 🔧 Componentes

A seguir estão os objetos que devem ser criados no seu ambiente SAP para executar o relatório:

- **Programa principal (SE38)**: `ZJLM_MVC_LOCAL`
- **Includes obrigatórios**:
  - `ZJLM_MVC_LOCAL_TOP` – Declarações globais
  - `ZJLM_MVC_LOCAL_VIEW` – Lógica de apresentação (VIEW)
  - `ZJLM_MVC_LOCAL_MDL` – Acesso aos dados da SPFLI (MODEL)
  - `ZJLM_MVC_LOCAL_CNTR` – Controle da lógica do programa (CONTROLLER)
- **Tela SAP (SE51 ou SE80)**:
  - Tela número `9000`

## 📷 Exemplo de Execução

Abaixo está a imagem do relatório em execução:

![image](https://github.com/user-attachments/assets/da9af934-f2e1-40fd-96b4-c576db013804)
![image](https://github.com/user-attachments/assets/3c45f327-7ed1-4d22-819d-615894b28bb2)

**Tela 9000**
![image](https://github.com/user-attachments/assets/508e89c2-1c42-445c-a505-2243f7889d62)


---

## 🛠️ Como Executar

1. Crie o programa `ZJLM_MVC_LOCAL` na SE38.
2. Adicione os includes citados acima.
3. Implemente cada include com sua respectiva responsabilidade.
4. Crie a tela 9000 com os campos necessários para exibir os dados da tabela SPFLI.
5. Execute o relatório para visualizar os resultados em tempo de execução.

---

## 🤝 Contribuição

Este projeto é apenas o começo! Fique à vontade para clonar, adaptar ou contribuir com melhorias. Vamos fortalecer a comunidade ABAP juntos!

---

## 📫 Contato

Conecte-se comigo no [LinkedIn](https://www.linkedin.com/in/joaoluismedeiros/) para acompanhar mais conteúdos como este.

