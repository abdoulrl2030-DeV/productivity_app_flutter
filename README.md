# productivity_app_flutter
App de produtividade (tarefas, hábitos e foco)

## Estrutura

Projeto organizado dentro de `lib/` com módulos: `auth`, `tasks`, `habits`, `focus`, `core` e `shared`.

## Como rodar no web (Chrome)

Pré-requisitos:
- Flutter SDK instalado e configurado (stable channel).

Passos:

1. No terminal, instale as dependências:

```bash
flutter pub get
```

2. Rode no Chrome:

```bash
flutter run -d chrome
```

3. Para build para produção:

```bash
flutter build web
```

Observações:
- Esta implementação contém stubs e implementações em memória para permitir execução rápida no web.
- Para integrar com APIs reais (Firestore, SQLite, secure storage), substitua os data sources correspondentes em `lib/modules/*/data`.
