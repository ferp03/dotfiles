# 🖥 Terminal Setup Cheatsheet

Personal terminal stack:

-   zsh
-   tmux
-   starship
-   zoxide
-   fzf
-   ripgrep
-   fd

------------------------------------------------------------------------

# 🧠 tmux

**Prefix:** `Ctrl + a`

## Sessions

| Action                       | Command                     |
|------------------------------|-----------------------------|
| New session                  | `tmux new -s name`          |
| List sessions                | `tmux ls`                   |
| Attach                       | `tmux attach -t name`       |
| Switch session (inside tmux) | `Ctrl+a s`                  |
| Detach                       | `Ctrl+a d`                  |
| Kill session                 | `tmux kill-session -t name` |
| Kill all                     | `tmux kill-server`          |

## Windows

| Action     | Command       |
|------------|---------------|
| New window | `Ctrl+a c`    |
| Next       | `Ctrl+a n`    |
| Previous   | `Ctrl+a p`    |
| By number  | `Ctrl+a 0..9` |
| Rename     | `Ctrl+a ,`    |
| Close      | `Ctrl+a &`    |

## Panes

| Action           | Command                      |
|------------------|------------------------------|
| Split vertical   | `Ctrl+a %`                   |
| Split horizontal | `Ctrl+a "`                   |
| Navigate         | `Ctrl+a Arrow keys`          |
| Close pane       | `Ctrl+a x`                   |
| Resize           | `Ctrl+a` then `Ctrl + Arrow` |

------------------------------------------------------------------------

# 🪟 AeroSpace (tiling en macOS)

Gestor de ventanas en mosaico para macOS.

## Comandos CLI básicos

| Action                         | Command                           |
|--------------------------------|-----------------------------------|
| Mostrar ayuda                  | `aerospace --help`                |
| Listar workspaces              | `aerospace list-workspaces --all` |
| Ir a workspace                 | `aerospace workspace 1`           |
| Mover ventana a workspace      | `aerospace move-node-to-workspace 2` |
| Listar ventanas actuales       | `aerospace list-windows --all`    |
| Foco a siguiente ventana       | `aerospace focus dfs-next`        |
| Foco a ventana previa          | `aerospace focus dfs-prev`        |
| Cerrar ventana enfocada        | `aerospace close`                 |
| Cambiar layout tiling/floating | `aerospace layout tiling` / `aerospace layout floating` |
| Recargar configuración         | `aerospace reload-config`         |

## Flujo rápido para practicar

``` bash
# 1) Ver tus workspaces
aerospace list-workspaces --all

# 2) Cambiar al workspace 1
aerospace workspace 1

# 3) Mover la ventana actual al workspace 2
aerospace move-node-to-workspace 2

# 4) Volver a cargar config al editarla
aerospace reload-config
```

Tip: normalmente estos comandos se usan detrás de atajos de teclado en tu archivo de configuración de AeroSpace.

------------------------------------------------------------------------

# 🔎 ripgrep (rg)

Fast recursive search (better grep).

| Action           | Command           |
|------------------|-------------------|
| Search text      | `rg "text"`       |
| Case insensitive | `rg -i "text"`    |
| By file type     | `rg -t ts "text"` |
| Search in folder | `rg "text" src/`  |

Example:

``` bash
rg TODO
```

------------------------------------------------------------------------

# 📁 fd

Modern replacement for find.

| Action       | Command        |
|--------------|----------------|
| Search file  | `fd filename`  |
| By extension | `fd -e ts`     |
| In directory | `fd name src/` |
| Hidden files | `fd -H name`   |

Example:

``` bash
fd config
```

------------------------------------------------------------------------

# 🔍 fzf

Fuzzy finder.

| Action                  | Command         |
|-------------------------|-----------------|
| Search history          | `Ctrl + r`      |
| Pipe search             | `command | fzf` |
| Find file interactively | `fd | fzf`      |
| Search rg results       | `rg text | fzf` |

Example:

``` bash
rg function | fzf
```

------------------------------------------------------------------------

# 🚀 zoxide

Smart directory jumping.

| Action              | Command     |
|---------------------|-------------|
| Jump                | `z folder`  |
| If configured as cd | `cd folder` |

------------------------------------------------------------------------

# 🧩 Useful Combos

### Search file then open in nvim

``` bash
fd | fzf | xargs nvim
```

### Search text and open selected result

``` bash
rg search | fzf
```

### Jump to project and start tmux

``` bash
z api && tmux
```

------------------------------------------------------------------------

# 🔄 Reload Shell

``` bash
source ~/.zshrc
```

------------------------------------------------------------------------

End of file.
