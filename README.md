# 📚 Projetos de Banco de Dados - Generation Brasil

Este repositório contém os projetos práticos de Banco de Dados desenvolvidos durante os exercícios da Generation Brasil.  
Cada projeto simula um cenário real ou temático, com criação de tabelas, inserção de dados e consultas SQL.

---

## ⚔️ Projeto 1: Tibia Game Online (Empera)

### 📌 Descrição
Banco de dados **`db_generation_game_online`** inspirado no RPG Tibia, com vocações e personagens famosos da época das wars em Empera contra Red Sky e Last Resort.  
Inclui classes (Knight, Paladin, Sorcerer, Druid, Summoner) e personagens lendários.

### 🛠️ Estrutura
- **tb_classes** → vocações do Tibia (Knight, Paladin, Sorcerer, Druid, Summoner).  
- **tb_personagens** → personagens com atributos de ataque, defesa e nível.

### 👥 Personagens Inseridos
- Nottinghster – Knight  
- Jah Widelux – Knight  
- Pato Malo – Sorcerer  
- Tete Lindinha – Summoner  
- Distorcedor de Mente – Sorcerer  
- Light Leader – Paladin  
- Ian Spyked – Paladin  
- Zena Daro – Druid  

---

## 🍕 Projeto 2: Pizzaria Legal

### 📌 Descrição
Banco de dados **`db_pizzaria_legal`** que simula uma pizzaria com categorias e pizzas.  
Inclui criação de tabelas, inserção de registros e consultas com filtros e `INNER JOIN`.

### 🛠️ Estrutura
- **tb_categorias** → armazena os tipos de pizza (Tradicional, Doce, Premium, Vegetariana, Especial).  
- **tb_pizzas** → armazena os produtos da pizzaria, relacionados às categorias.

### 🔎 Consultas
- Pizzas com valor > R$ 45,00  
- Pizzas com valor entre R$ 50,00 e R$ 100,00  
- Pizzas cujo nome contém a letra "M"  
- `INNER JOIN` entre pizzas e categorias  
- `INNER JOIN` filtrando apenas pizzas da categoria **Doce**

---

## 🎮 Projeto 3: Loja de Games

### 📌 Descrição
Banco de dados **`db_loja_games`** que simula uma loja de games online.  
Gerencia categorias de produtos, usuários e os próprios produtos.

### 🛠️ Estrutura
- **tb_categorias** → tipos de jogos/produtos.  
- **tb_usuarios** → dados dos usuários que cadastram produtos.  
- **tb_produtos** → jogos e consoles vendidos, relacionados a categorias e usuários.

### 🔗 Relacionamentos
- Uma **categoria** pode ter vários **produtos** (1:N).  
- Um **usuário** pode cadastrar vários **produtos** (1:N).  

---

## ✅ Conclusão
Esses projetos são ótimos exercícios para praticar:
- Criação de bancos e tabelas.  
- Inserção e manipulação de dados.  
- Consultas com filtros (`WHERE`, `BETWEEN`, `LIKE`).  
- Relacionamentos entre tabelas com `INNER JOIN`.  
- Modelagem de cenários reais e temáticos (Tibia, pizzaria, loja de games).  

---