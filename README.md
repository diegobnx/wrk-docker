# wrk-docker

> Teste de performance HTTP com [wrk](https://github.com/wg/wrk), rodando via Docker no macOS/ARM64 (Apple Silicon)

Este repositório contém um script shell para facilitar o uso do `wrk` dentro de um container Alpine, com suporte a plataformas ARM64 (ex: Mac M1/M2) e definição de `User-Agent`.

---

## 🔧 Pré-requisitos

- Docker instalado
- Acesso ao terminal

---

## 🚀 Como usar

### 1. Torne o script executável

```bash
chmod +x wrk-docker.sh
```

### 2. Execute o teste

```bash
./wrk-docker.sh http://seusite.com "Mozilla/5.0 (Macintosh; Intel Mac OS X 13_4)"
```

- **Argumento 1:** URL do site alvo
- **Argumento 2:** (opcional) Header `User-Agent`

---

## 🧪 O que o script faz

- Roda um container Alpine temporário
- Instala o `wrk`
- Executa um teste de stress por 30 segundos com 4 threads e 100 conexões
- Envia as requisições com o `User-Agent` fornecido (ou padrão)

> Obs.: O `wrk` não aceita headers customizados via CLI — se for necessário controle avançado de headers, usar script Lua (futuramente suportado aqui).

---

## 🛠️ Exemplo de saída

```
Running 30s test @ http://seusite.com
  4 threads and 100 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    ...
  Requests/sec:  950
  Transfer/sec:  1.2MB
```

---

## 🔐 Segurança

> **Use com responsabilidade.** Esse script é destinado a ambientes de teste sob seu controle. Executar stress tests em sites de terceiros pode ser interpretado como ataque.

---

## 📦 Futuro

- [ ] Suporte a script Lua para headers customizados no `wrk`
- [ ] Interface CLI interativa
- [ ] Dockerfile custom com `wrk` pré-instalado

---

## 🧑‍💻 Autor

[@diegobnx](https://github.com/diegobnx)