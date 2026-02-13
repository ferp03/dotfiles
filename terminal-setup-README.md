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

## Atajos de teclado (config por defecto)

> Nota: AeroSpace no trae "atajos globales fijos"; los defines en `~/.aerospace.toml`.  
> Esta guía usa el esquema más común del `default-config` (`alt` como modificador principal).

| Acción | Atajo |
|--------|-------|
| Enfocar ventana izquierda/abajo/arriba/derecha | `alt + h/j/k/l` |
| Mover ventana izquierda/abajo/arriba/derecha | `alt + shift + h/j/k/l` |
| Cambiar layout tiles | `alt + /` |
| Cambiar layout accordion | `alt + ,` |
| Redimensionar ventana (menos/más) | `alt + -` / `alt + =` |
| Ir a workspace 1..9 | `alt + 1..9` |
| Mover ventana a workspace 1..9 | `alt + shift + 1..9` |
| Ir a workspace por letra (A..Z) | `alt + letra` |
| Mover ventana a workspace por letra | `alt + shift + letra` |
| Workspace anterior/actual (toggle) | `alt + tab` |
| Mover workspace al monitor siguiente | `alt + shift + tab` |
| Entrar a modo service | `alt + shift + ;` |

## Modo service (después de `alt + shift + ;`)

| Acción | Atajo |
|--------|-------|
| Recargar config y volver a modo main | `esc` |
| Resetear layout (flatten) y volver | `r` |
| Toggle floating/tiling y volver | `f` |
| Cerrar todas menos la ventana actual y volver | `backspace` |
| Join con izquierda/abajo/arriba/derecha y volver | `alt + shift + h/j/k/l` |

## Flujo rápido para practicar (solo teclado)

1. Abre 2-3 apps y muévete entre ventanas con `alt + h/j/k/l`.
2. Mueve una ventana con `alt + shift + h/j/k/l`.
3. Cambia de workspace con `alt + 1`, `alt + 2`, etc.
4. Envía la ventana actual a otro workspace con `alt + shift + 2`.
5. Entra a `service mode` con `alt + shift + ;` y prueba `f` y `r`.

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
