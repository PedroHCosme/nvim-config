# 🚀 Guia Completo do Neovim para Iniciantes

Este é um guia completo sobre como usar o Neovim, especialmente configurado para esta setup. Se você é iniciante no Neovim, este guia irá te ensinar tudo que você precisa saber para começar a usar este poderoso editor.

## 📖 Índice

1. [O que é o Neovim?](#-o-que-é-o-neovim)
2. [Conceitos Fundamentais](#-conceitos-fundamentais)
3. [Modos do Neovim](#-modos-do-neovim)
4. [Navegação Básica](#-navegação-básica)
5. [Comandos Essenciais](#-comandos-essenciais)
6. [Atalhos Principais desta Configuração](#-atalhos-principais-desta-configuração)
7. [Plugins Incluídos](#-plugins-incluídos)
8. [Gerenciamento de Arquivos](#-gerenciamento-de-arquivos)
9. [Busca e Substituição](#-busca-e-substituição)
10. [Dicas Avançadas](#-dicas-avançadas)
11. [Solução de Problemas](#-solução-de-problemas)

## 🤔 O que é o Neovim?

O **Neovim** é um editor de texto baseado no terminal, uma versão modernizada do famoso editor Vim. Ele é:

- **Modal**: Opera em diferentes modos (Normal, Insert, Visual, etc.)
- **Extensível**: Suporta plugins e configurações avançadas
- **Eficiente**: Navegação rápida usando apenas o teclado
- **Poderoso**: Funcionalidades avançadas para programação

### Por que usar o Neovim?

- ⚡ **Velocidade**: Muito rápido e eficiente
- 🔧 **Customização**: Altamente configurável
- 🎯 **Produtividade**: Após dominar, você será muito mais produtivo
- 🔌 **Extensibilidade**: Milhares de plugins disponíveis
- 🖥️ **Universalidade**: Funciona em qualquer sistema operacional

## 🧠 Conceitos Fundamentais

### Buffers, Windows e Tabs

- **Buffer**: Um arquivo carregado na memória
- **Window**: Uma área de visualização de um buffer
- **Tab**: Um conjunto de windows

```
Tab 1: [Window 1: buffer A] [Window 2: buffer B]
Tab 2: [Window 1: buffer C]
```

### Leader Key

A **Leader Key** é uma tecla especial que ativa combinações de comandos. Nesta configuração, a leader key é a **barra de espaço** (` `).

Exemplo: `<leader>w` significa pressionar `espaço + w`

## 🔄 Modos do Neovim

O Neovim opera em diferentes modos. Entender isso é fundamental:

### 1. Modo Normal (padrão)
- **Como entrar**: Pressione `Esc`
- **Indicador**: Cursor em bloco
- **Função**: Navegação e comandos

### 2. Modo Insert
- **Como entrar**: Pressione `i` (insert), `a` (append), `o` (nova linha)
- **Como sair**: Pressione `Esc`
- **Função**: Edição de texto

### 3. Modo Visual
- **Como entrar**: Pressione `v` (visual), `V` (linha), `Ctrl+v` (bloco)
- **Como sair**: Pressione `Esc`
- **Função**: Seleção de texto

### 4. Modo Command
- **Como entrar**: Pressione `:` no modo Normal
- **Função**: Executar comandos

## 🧭 Navegação Básica

### Movimentação Fundamental

```
        k (cima)
        ↑
h (esq) ← • → l (dir)
        ↓
      j (baixo)
```

### Movimentação por Palavras
- `w` - próxima palavra
- `b` - palavra anterior  
- `e` - fim da palavra atual

### Movimentação na Linha
- `0` - início da linha
- `^` - primeiro caractere não-branco
- `$` - fim da linha
- `<leader>h` - início da linha (atalho customizado)
- `<leader>l` - fim da linha (atalho customizado)

### Movimentação no Arquivo
- `gg` - início do arquivo
- `G` - fim do arquivo
- `:{número}` - ir para linha específica
- `Ctrl+u` - subir meia página
- `Ctrl+d` - descer meia página

## ⚡ Comandos Essenciais

### Edição Básica
- `i` - entrar no modo insert antes do cursor
- `a` - entrar no modo insert depois do cursor
- `o` - nova linha abaixo e entrar no modo insert
- `O` - nova linha acima e entrar no modo insert

### Deletar
- `x` - deletar caractere sob o cursor (sem copiar)
- `X` - deletar linha inteira (sem copiar)
- `dw` - deletar palavra
- `dd` - deletar linha
- `d$` - deletar até o fim da linha

### Copiar e Colar
- `yy` - copiar linha
- `yw` - copiar palavra
- `p` - colar depois do cursor
- `P` - colar antes do cursor
- `gy` - copiar para clipboard do sistema
- `gp` - colar do clipboard do sistema

### Desfazer e Refazer
- `u` - desfazer
- `Ctrl+r` - refazer

## 🎯 Atalhos Principais desta Configuração

### Gerenciamento de Arquivos
| Atalho | Comando | Descrição |
|--------|---------|-----------|
| `<leader>w` | `:write` | Salvar arquivo |
| `<leader>bq` | `:bdelete` | Fechar buffer |
| `<leader>a` | `ggVG` | Selecionar tudo |

### Navegação entre Janelas
| Atalho | Descrição |
|--------|-----------|
| `Ctrl+h` | Mover para janela à esquerda |
| `Ctrl+j` | Mover para janela abaixo |
| `Ctrl+k` | Mover para janela acima |
| `Ctrl+l` | Mover para janela à direita |

### Gerenciamento de Janelas
| Atalho | Descrição |
|--------|-----------|
| `<leader>sv` | Dividir janela verticalmente |
| `<leader>sh` | Dividir janela horizontalmente |
| `<leader>se` | Tornar janelas iguais |
| `<leader>sx` | Fechar janela atual |

### Gerenciamento de Abas
| Atalho | Descrição |
|--------|-----------|
| `<leader>to` | Nova aba |
| `<leader>tx` | Fechar aba atual |
| `<leader>tn` | Próxima aba |
| `<leader>tp` | Aba anterior |

### Explorador de Arquivos (NvimTree)
| Atalho | Descrição |
|--------|-----------|
| `Ctrl+n` | Abrir/Fechar explorador |

### Telescope (Busca Fuzzy)
| Atalho | Descrição |
|--------|-----------|
| `<leader>ff` | Procurar arquivos |
| `<leader>fg` | Procurar por texto (grep) |
| `<leader>fb` | Procurar em buffers abertos |
| `<leader>fh` | Procurar ajuda |
| `<leader>fo` | Procurar arquivos recentes |

### LSP (Language Server Protocol)
| Atalho | Descrição |
|--------|-----------|
| `gD` | Ir para declaração |
| `gd` | Ir para definição |
| `K` | Mostrar documentação |
| `gi` | Ir para implementação |
| `<leader>ca` | Ações de código |
| `<leader>cr` | Renomear símbolo |

## 🔌 Plugins Incluídos

Esta configuração inclui diversos plugins para melhorar sua experiência:

### 🗂️ NvimTree
**Explorador de arquivos lateral**
- Navegue pelos arquivos do projeto
- Crie, delete e renomeie arquivos
- Atalho: `Ctrl+n`

### 🔍 Telescope
**Busca fuzzy poderosa**
- Encontre arquivos rapidamente
- Busque por conteúdo nos arquivos
- Navegue pelo histórico de arquivos
- Atalhos: `<leader>f*`

### 🧠 LSP (Language Server Protocol)
**Inteligência de código**
- Autocompletar
- Navegação por definições
- Detecção de erros
- Refatoração
- Suporte para Lua e TypeScript

### 🎨 Treesitter
**Destaque de sintaxe avançado**
- Cores mais precisas
- Melhor estruturação do código

### 🤖 Copilot
**Assistente de código IA**
- Sugestões automáticas de código
- Completar funções e comentários

### 🎯 Git Integration
**Integração com Git**
- Indicadores visuais de mudanças
- Comandos Git integrados

## 📁 Gerenciamento de Arquivos

### Usando o NvimTree
1. Pressione `Ctrl+n` para abrir
2. Navegue com `j/k` ou setas
3. Pressione `Enter` para abrir arquivo
4. Pressione `a` para criar novo arquivo
5. Pressione `d` para deletar
6. Pressione `r` para renomear

### Usando o Telescope
1. `<leader>ff` - lista todos os arquivos
2. Digite parte do nome do arquivo
3. Use `Ctrl+j/k` para navegar
4. Pressione `Enter` para abrir

## 🔍 Busca e Substituição

### Busca Simples
- `/texto` - buscar para frente
- `?texto` - buscar para trás
- `n` - próxima ocorrência
- `N` - ocorrência anterior

### Busca com Telescope
- `<leader>fg` - buscar texto em todos os arquivos
- Digite o texto e pressione `Enter`

### Substituição
- `:s/antigo/novo/` - substituir na linha atual
- `:%s/antigo/novo/g` - substituir em todo o arquivo
- `:%s/antigo/novo/gc` - substituir com confirmação

## 🚀 Dicas Avançadas

### Macros
1. `q{letra}` - iniciar gravação de macro
2. Execute os comandos desejados
3. `q` - parar gravação
4. `@{letra}` - executar macro
5. `@@` - repetir último macro

### Registros
- `"{letra}y` - copiar para registro específico
- `"{letra}p` - colar de registro específico
- `:reg` - ver todos os registros

### Múltiplos Cursores (Modo Visual)
1. Selecione texto com `v`
2. Pressione `Ctrl+v` para modo visual de bloco
3. Selecione múltiplas linhas
4. Pressione `I` para inserir no início
5. Digite o texto
6. Pressione `Esc` para aplicar

### Dobras (Folds)
- `zf` - criar dobra
- `zo` - abrir dobra
- `zc` - fechar dobra
- `za` - alternar dobra

## ❗ Solução de Problemas

### Problemas Comuns

**"Estou preso no modo Insert"**
- Solução: Pressione `Esc` para voltar ao modo Normal

**"Não consigo sair do Neovim"**
- Solução: `:q` para sair, `:q!` para sair sem salvar

**"Comando não funciona"**
- Verifique se está no modo correto
- Certifique-se de usar a leader key correta (espaço)

**"Plugin não está funcionando"**
- Execute `:checkhealth` para diagnóstico
- Verifique se o plugin está instalado: `:Lazy`

### Comandos de Diagnóstico
- `:checkhealth` - verificar saúde do sistema
- `:Lazy` - gerenciar plugins
- `:Mason` - gerenciar LSP servers
- `:LspInfo` - informações do LSP

## 🎓 Próximos Passos

### Para Continuar Aprendendo:
1. **Pratique os movimentos básicos** até se tornarem naturais
2. **Use apenas um plugin por vez** para não se sobrecarregar
3. **Personalize os atalhos** conforme sua necessidade
4. **Explore a documentação** com `:help {comando}`
5. **Junte-se à comunidade** para dicas e truques

### Recursos Adicionais:
- `:help` - sistema de ajuda integrado
- `:Tutor` - tutorial interativo do Vim
- Prática regular é a chave!

---

## 💡 Lembrete Final

O Neovim tem uma curva de aprendizado inicial, mas após dominá-lo, você será muito mais produtivo. Seja paciente consigo mesmo e pratique regularmente. Com o tempo, esses comandos se tornarão segunda natureza!

**Dica de Ouro**: Comece usando apenas os comandos básicos e vá adicionando novos conforme se sentir confortável. Não tente aprender tudo de uma vez!

Boa sorte na sua jornada com o Neovim! 🚀