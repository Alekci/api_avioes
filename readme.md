# ✈️ API Loja de Aeronaves Militares (`loja-api`)

## 📁 Estrutura do Projeto

```
loja-api/
├── Controller/
│   ├── CategoriaController.php
│   ├── ClienteController.php
│   └── ProdutoController.php
├── Model/
│   ├── Categoria.php
│   ├── Cliente.php
│   └── Produto.php
├── categoria.php
├── cliente.php
├── produto.php
└── conexao.php

```

## 🚀 Rotas (Insomnia / Postman)

**URL Base:** `http://localhost:8000`

### Categorias (`/categoria.php`)

* **`GET`** `/categoria.php` — Lista todas as categorias.

* **`GET`** `/categoria.php?id_categoria=1` — Busca uma categoria específica e seus produtos.

* **`POST`** `/categoria.php` — Cadastra uma categoria.

  ```
  {
    "nome": "Bombardeiros"
  }
  
  ```

* **`PUT`** `/categoria.php?id_categoria=1` — Atualiza uma categoria.

  ```
  {
    "nome": "Caças de 6ª Geração"
  }
  
  ```

* **`DELETE`** `/categoria.php?id_categoria=1` — Deleta uma categoria.

### Produtos (`/produto.php`)

* **`GET`** `/produto.php` — Lista todas as aeronaves.

* **`GET`** `/produto.php?id_produto=1` — Busca uma aeronave específica.

* **`POST`** `/produto.php` — Cadastra uma aeronave.

  ```
  {
    "nome": "Northrop B-2 Spirit",
    "descricao": "Bombardeiro estratégico furtivo.",
    "preco": 2100000000.00,
    "categoria_id": 3
  }
  
  ```

* **`PUT`** `/produto.php?id_produto=1` — Atualiza uma aeronave.

  ```
  {
    "nome": "Lockheed C-130J Super Hercules",
    "descricao": "Aeronave de transporte militar atualizada.",
    "preco": 165000000.00,
    "categoria_id": 1
  }
  
  ```

* **`DELETE`** `/produto.php?id_produto=1` — Deleta uma aeronave.

### Clientes (`/cliente.php`)

* **`GET`** `/cliente.php` — Lista todos os clientes.

* **`GET`** `/cliente.php?id_cliente=1` — Busca um cliente específico.

* **`POST`** `/cliente.php` — Cadastra um cliente.

  ```
  {
    "nome": "Tariq Al-Mansoor",
    "email": "tariq@defesa.mil",
    "telefone": "(11) 97777-1234",
    "endereco": "Base Aérea Sul"
  }
  
  ```

* **`PUT`** `/cliente.php?id_cliente=1` — Atualiza um cliente.

  ```
  {
    "nome": "Tariq Al-Mansoor",
    "email": "tariq.novo@defesa.mil",
    "telefone": "(11) 98888-4321",
    "endereco": "Base Aérea Norte"
  }
  
  ```

* **`DELETE`** `/cliente.php?id_cliente=1` — Deleta um cliente.