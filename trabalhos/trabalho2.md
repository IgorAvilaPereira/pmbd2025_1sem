
## Trabalho 2 🎤 **Sistema de Gestão de Eventos**

### 🎯 **Objetivo do Projeto**

Desenvolver um sistema simples de banco de dados relacional para gerenciar eventos, participantes, inscrições, palestrantes e suas apresentações.

---

## 📌 **Descrição das Relações**

### 1. **Evento**

* Cada evento possui nome, data de início, data de fim e local.
* Um evento pode ter várias **palestras**.
* Um evento pode ter vários **participantes** (via inscrições).

### 2. **Participante**

* Participante é qualquer pessoa que se inscreve em um evento.
* Pode estar inscrito em vários eventos (relação N\:N com Evento via **Inscrição**).

### 3. **Inscrição**

* Tabela associativa entre **Participante** e **Evento**.
* Relação **N\:N**, com informação adicional da data de inscrição.

### 4. **Palestrante**

* Representa o responsável por ministrar uma ou mais palestras.
* Pode participar de várias palestras (relação N\:N com Palestra via tabela **Palestra\_Palestrante**).

### 5. **Palestra**

* Cada palestra está vinculada a **um único evento**.
* Pode ter **um ou mais palestrantes** (relação N\:N).

### 6. **Palestra\_Palestrante**

* Tabela associativa entre **Palestra** e **Palestrante**.
* Permite que uma palestra tenha múltiplos palestrantes e que um palestrante participe de várias palestras.

---

## ✅ **Entregáveis**

1. **Modelo Relacional**
2. **Script DDL (Data Definition Language)**
3. **Consultas Básicas**

* **Palestrantes com nome começando com "Ana":**

* **Palestras marcadas para data/hora depois de hoje:**

### Exemplos de UPDATE (alterar dados)

* **Atualizar telefone de um participante:**

### Exemplos de DELETE (remover dados)

* **Remover inscrição de um participante em um evento:**


