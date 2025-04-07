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