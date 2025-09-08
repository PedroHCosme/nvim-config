# 🚀 Guia Completo do Neovim para Iniciantes

## 📋 Índice

1. [O que é o Neovim?](#o-que-é-o-neovim)
2. [Instalação](#instalação)
3. [Conceitos Fundamentais](#conceitos-fundamentais)
4. [Modos do Neovim](#modos-do-neovim)
5. [Comandos Básicos](#comandos-básicos)
6. [Navegação](#navegação)
7. [Edição de Texto](#edição-de-texto)
8. [Esta Configuração](#esta-configuração)
9. [Atalhos Personalizados](#atalhos-personalizados)
10. [Plugins Instalados](#plugins-instalados)
11. [Comandos Avançados](#comandos-avançados)
12. [Dicas para Iniciantes](#dicas-para-iniciantes)
13. [Troubleshooting](#troubleshooting)

---

## O que é o Neovim?

O **Neovim** é um editor de texto moderno e extensível, baseado no clássico editor Vim. É uma ferramenta poderosa para programação e edição de texto em geral, com foco em:

- **Eficiência**: Edite textos sem tirar as mãos do teclado
- **Extensibilidade**: Configuração altamente personalizável
- **Performance**: Rápido e leve
- **Versatilidade**: Funciona em terminais e interfaces gráficas

### Por que usar o Neovim?

- 🎯 **Produtividade**: Uma vez dominado, é extremamente eficiente
- 🔧 **Customização**: Configure tudo do seu jeito
- 🌐 **Comunidade**: Grande comunidade e ecossistema de plugins
- 🚀 **Moderno**: Recursos avançados como LSP nativo, async, etc.

---

## Instalação

### Linux (Ubuntu/Debian)
```bash
sudo apt install neovim
```

### macOS
```bash
brew install neovim
```

### Windows
```bash
winget install Neovim.Neovim
```

### Usando esta configuração

1. Clone este repositório:
```bash
git clone https://github.com/PedroHCosme/nvim-config.git ~/.config/nvim
```

2. Abra o Neovim:
```bash
nvim
```

3. Os plugins serão instalados automaticamente na primeira execução!

---

## Conceitos Fundamentais

### A Filosofia do Vim/Neovim

O Neovim funciona com base em **comandos compostos**:
- **Verbo + Objeto**: `d` (delete) + `w` (word) = deletar palavra
- **Modificadores**: `d` + `i` + `w` = deletar dentro da palavra
- **Repetição**: Números multiplicam ações: `3dw` = deletar 3 palavras

### Tecla Leader

A **tecla leader** (configurada como `<Espaço>` nesta configuração) é usada para criar atalhos personalizados. Por exemplo:
- `<leader>w` = `<Espaço>` + `w` = salvar arquivo

---

## Modos do Neovim

O Neovim possui diferentes **modos de operação**:

### 🔵 Modo Normal (padrão)
- **Como entrar**: `Esc` ou `Ctrl+[`
- **Propósito**: Navegação e comandos
- **Cursor**: Bloco sólido
- **Exemplo**: Mover, deletar, copiar

### 🟢 Modo Insert
- **Como entrar**: `i`, `a`, `o`, etc.
- **Propósito**: Inserir/editar texto
- **Cursor**: Linha vertical
- **Como sair**: `Esc`

### 🟡 Modo Visual
- **Como entrar**: `v` (caracteres), `V` (linhas), `Ctrl+v` (bloco)
- **Propósito**: Selecionar texto
- **Como sair**: `Esc` ou executar comando

### 🔴 Modo Command
- **Como entrar**: `:` (no modo Normal)
- **Propósito**: Executar comandos
- **Exemplo**: `:w` (salvar), `:q` (sair)

---

## Comandos Básicos

### 💾 Salvar e Sair
```vim
:w          " Salvar arquivo
:q          " Sair (se não houver alterações)
:wq         " Salvar e sair
:q!         " Sair sem salvar (forçar)
:x          " Salvar e sair (igual :wq)
ZZ          " Salvar e sair (modo Normal)
ZQ          " Sair sem salvar (modo Normal)
```

### 📁 Gerenciar Arquivos
```vim
:e arquivo.txt    " Abrir arquivo
:e .              " Abrir explorador de diretório
:w novo.txt       " Salvar como novo arquivo
:r arquivo.txt    " Inserir conteúdo de arquivo
```

---

## Navegação

### 🎯 Movimento Básico
```vim
h, j, k, l    " ←, ↓, ↑, → (ou use as setas)
w             " Próxima palavra
b             " Palavra anterior
e             " Final da palavra
0             " Início da linha
^             " Primeiro caractere não-branco da linha
$             " Final da linha
gg            " Início do arquivo
G             " Final do arquivo
5G ou :5      " Ir para linha 5
```

### 🔍 Busca
```vim
/palavra      " Buscar 'palavra' para frente
?palavra      " Buscar 'palavra' para trás
n             " Próxima ocorrência
N             " Ocorrência anterior
*             " Buscar palavra sob o cursor (para frente)
#             " Buscar palavra sob o cursor (para trás)
```

### 📄 Navegação por Página
```vim
Ctrl+f        " Página para baixo
Ctrl+b        " Página para cima
Ctrl+d        " Meia página para baixo
Ctrl+u        " Meia página para cima
```

---

## Edição de Texto

### ✏️ Inserir Texto
```vim
i             " Inserir antes do cursor
a             " Inserir após o cursor
I             " Inserir no início da linha
A             " Inserir no final da linha
o             " Nova linha abaixo
O             " Nova linha acima
```

### ✂️ Deletar Texto
```vim
x             " Deletar caractere sob o cursor
X             " Deletar caractere antes do cursor
dw            " Deletar palavra
dd            " Deletar linha
D             " Deletar do cursor até final da linha
d0            " Deletar do cursor até início da linha
```

### 📋 Copiar e Colar
```vim
yy            " Copiar linha
yw            " Copiar palavra
y$            " Copiar do cursor até final da linha
p             " Colar após cursor/linha
P             " Colar antes cursor/linha
```

### 🔄 Desfazer e Refazer
```vim
u             " Desfazer
Ctrl+r        " Refazer
U             " Desfazer todas as mudanças na linha
```

### 🔀 Substituir
```vim
r + char      " Substituir um caractere
R             " Entrar no modo Replace
:s/old/new    " Substituir primeira ocorrência na linha
:s/old/new/g  " Substituir todas ocorrências na linha
:%s/old/new/g " Substituir em todo o arquivo
```

---

## Esta Configuração

Esta configuração do Neovim inclui:

### 🎨 Características
- **Tema**: Tokyo Night (padrão), Kanagawa e Nightfox disponíveis
- **Gerenciador de plugins**: Lazy.nvim
- **Numeração**: Números relativos habilitados
- **Indentação**: 2 espaços, expansão automática de tabs
- **Mouse**: Habilitado em todos os modos

### 📂 Estrutura de Arquivos
```
~/.config/nvim/
├── init.lua              # Ponto de entrada principal
├── lua/
│   ├── core/             # Configurações básicas
│   │   ├── options.lua   # Opções do editor
│   │   ├── keymaps.lua   # Atalhos básicos
│   │   └── colorscheme.lua # Configuração de temas
│   └── plugins/          # Configurações de plugins
│       ├── ui.lua        # Interface (temas, statusline)
│       ├── telescope.lua # Busca fuzzy
│       ├── tree.lua      # Explorador de arquivos
│       ├── lsp.lua       # Language Server Protocol
│       ├── git.lua       # Integração com Git
│       └── ...
```

---

## Atalhos Personalizados

### 🎮 Tecla Leader: `<Espaço>`

### 📁 Gerenciamento de Arquivos e Buffers
```vim
<leader>w       " Salvar arquivo
<leader>bq      " Fechar buffer atual
```

### 🧭 Navegação Melhorada
```vim
<leader>h       " Ir para início da linha
<leader>l       " Ir para final da linha
<leader>a       " Selecionar todo o texto
```

### 📋 Clipboard do Sistema
```vim
gy              " Copiar para clipboard do sistema
gp              " Colar do clipboard do sistema
```

### 🗑️ Deletar sem Copiar
```vim
x               " Deletar sem enviar para clipboard
X               " Deletar sem enviar para clipboard
```

### 🪟 Gerenciamento de Janelas
```vim
Ctrl+h/j/k/l    " Navegar entre janelas
<leader>sv      " Dividir janela verticalmente
<leader>sh      " Dividir janela horizontalmente
<leader>se      " Equalizar tamanho das janelas
<leader>sx      " Fechar janela atual
```

### 📑 Gerenciamento de Abas
```vim
<leader>to      " Nova aba
<leader>tx      " Fechar aba atual
<leader>tn      " Próxima aba
<leader>tp      " Aba anterior
```

---

## Plugins Instalados

### 🔍 Telescope (Busca Fuzzy)
**O que faz**: Busca rápida de arquivos, texto e mais

```vim
<leader>ff      " Buscar arquivos
<leader>fg      " Buscar por texto (grep)
<leader>fb      " Buscar em buffers abertos
<leader>fh      " Buscar na ajuda
<leader>fo      " Buscar arquivos recentes
```

**Como usar**:
1. Pressione `<leader>ff` para buscar arquivos
2. Digite parte do nome do arquivo
3. Use `Ctrl+j/k` para navegar
4. `Enter` para abrir

### 📁 NvimTree (Explorador de Arquivos)
**O que faz**: Navegador de arquivos em árvore

```vim
Ctrl+n          " Abrir/fechar explorador
```

**Navegação no NvimTree**:
- `Enter` ou `o`: Abrir arquivo/pasta
- `a`: Criar novo arquivo/pasta
- `d`: Deletar
- `r`: Renomear
- `x`: Recortar
- `c`: Copiar
- `p`: Colar

### 🎨 Interface (UI)
- **Lualine**: Barra de status informativa
- **Bufferline**: Abas de buffers no topo
- **Indent-blankline**: Linhas de indentação
- **Nvim-web-devicons**: Ícones bonitos

### 🧠 LSP (Language Server Protocol)
**O que faz**: Recursos inteligentes de programação

**Atalhos LSP**:
```vim
gd              " Ir para definição
gD              " Ir para declaração
K               " Mostrar documentação
gi              " Ir para implementação
<leader>ca      " Ações de código
<leader>cr      " Renomear símbolo
```

**Linguagens suportadas**:
- Lua
- TypeScript/JavaScript
- (Mais podem ser adicionadas via Mason)

### 🔧 Mason
**O que faz**: Gerenciador de servidores LSP

```vim
:Mason          " Abrir interface do Mason
```

### 📝 Git Integration
- **Gitsigns**: Mostra mudanças do Git na lateral
- **Fugitive**: Comandos Git dentro do Neovim

### 🤖 GitHub Copilot
**O que faz**: Sugestões de código AI

**Como usar**:
- Sugestões aparecem automaticamente
- `Tab`: Aceitar sugestão
- `Ctrl+]`: Próxima sugestão

### 🌳 Treesitter
**O que faz**: Destaque de sintaxe avançado e melhor estruturação de código

---

## Comandos Avançados

### 🔍 Busca e Substituição Avançada
```vim
:%s/\<palavra\>/nova/g    " Substituir palavra exata
:%s/old/new/gc            " Substituir com confirmação
:g/pattern/d              " Deletar linhas que contêm padrão
:v/pattern/d              " Deletar linhas que NÃO contêm padrão
```

### 📊 Múltiplos Arquivos
```vim
:args *.txt               " Abrir todos arquivos .txt
:argdo %s/old/new/g       " Substituir em todos arquivos
:wall                     " Salvar todos arquivos
```

### 🎯 Marcadores
```vim
ma                        " Criar marcador 'a'
'a                        " Ir para marcador 'a'
:marks                    " Ver todos marcadores
```

### 📝 Macros
```vim
qa                        " Gravar macro no registrador 'a'
# ... executar comandos ...
q                         " Parar gravação
@a                        " Executar macro 'a'
@@                        " Repetir último macro
```

### 🔄 Comandos Externos
```vim
:!comando                 " Executar comando do sistema
:r !comando               " Inserir saída de comando
:.!comando                " Filtrar linha atual através de comando
```

---

## Dicas para Iniciantes

### 🎯 Como Aprender Eficientemente

1. **Comece Pequeno**: Use apenas os comandos básicos primeiro
2. **Pratique Diariamente**: Consistência é mais importante que intensidade
3. **Use o Vimtutor**: Digite `vimtutor` no terminal
4. **Configure Gradualmente**: Não mude tudo de uma vez

### 🚀 Sequência de Aprendizado Recomendada

1. **Semana 1**: Modos, navegação básica (`hjkl`, `gg`, `G`)
2. **Semana 2**: Edição básica (`i`, `a`, `o`, `dd`, `yy`, `p`)
3. **Semana 3**: Busca (`/`, `n`, `N`) e substituição (`:s`)
4. **Semana 4**: Comandos de arquivo (`:w`, `:q`, `:e`)
5. **Semana 5+**: Recursos avançados e plugins

### 📚 Recursos de Ajuda

```vim
:help                     " Ajuda geral
:help comando             " Ajuda para comando específico
:help :comando            " Ajuda para comando de linha
:help 'opção'             " Ajuda para opção
:help tecla               " Ajuda para tecla específica
```

### 🎮 Comandos Úteis para Descoberta

```vim
:map                      " Ver todos os mapeamentos
:command                  " Ver todos os comandos disponíveis
:set                      " Ver todas as configurações
:version                  " Informações sobre a versão
```

### 💡 Truques de Produtividade

1. **Use `.` para repetir**: Depois de qualquer mudança, `.` repete
2. **Use números**: `3dd` deleta 3 linhas, `5j` desce 5 linhas
3. **Combine comandos**: `d5j` deleta linha atual + 5 abaixo
4. **Use objetos de texto**: `diw` deleta palavra, `da(` deleta com parênteses

---

## Troubleshooting

### ❌ Problemas Comuns

#### Plugin não carrega
```vim
:Lazy                     " Abrir interface do Lazy
:Lazy sync                " Sincronizar plugins
```

#### LSP não funciona
```vim
:Mason                    " Verificar se language servers estão instalados
:LspInfo                  " Informações sobre LSP ativo
```

#### Configuração não aplica
```vim
:source ~/.config/nvim/init.lua    " Recarregar configuração
```

#### Comandos não funcionam
- Verifique se está no modo correto (`Esc` para Normal)
- Verifique se não há conflitos de mapeamento (`:map`)

### 🔧 Comandos de Diagnóstico

```vim
:checkhealth              " Verificar saúde da instalação
:messages                 " Ver mensagens de erro
:verbose set option?      " Ver onde opção foi definida
```

### 📞 Obtendo Ajuda

1. **Documentação**: `:help` + termo
2. **Comunidade**: Reddit r/neovim, Discord
3. **GitHub**: Issues neste repositório
4. **Stack Overflow**: Tag 'neovim'

---

## 🚀 Próximos Passos

### Para Usuários Intermediários
- Aprenda Lua para personalizar ainda mais
- Explore mais plugins no [awesome-neovim](https://github.com/rockerBOO/awesome-neovim)
- Configure servidores LSP para suas linguagens favoritas

### Para Usuários Avançados
- Crie seus próprios plugins
- Configure workflows complexos
- Contribua para a comunidade

---

## 📚 Recursos Adicionais

- [Documentação Oficial do Neovim](https://neovim.io/doc/)
- [Vim Adventures](https://vim-adventures.com/) - Jogo para aprender
- [Practical Vim](https://pragprog.com/titles/dnvim2/practical-vim-second-edition/) - Livro excelente
- [ThePrimeagen's Vim Course](https://frontendmasters.com/courses/vim-fundamentals/) - Curso online

---

## 🤝 Contribuindo

Encontrou um erro ou tem uma sugestão? Abra uma issue ou envie um pull request!

---

**Lembre-se**: O Neovim tem uma curva de aprendizado, mas a recompensa vale muito a pena. Seja paciente consigo mesmo e pratique regularmente. Em poucas semanas, você estará editando texto mais rápido do que jamais imaginou! 🚀

---

**Happy Vimming!** 🎉