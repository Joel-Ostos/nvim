# Neovim-Config

Para la instalacion de está configuración se debe contar antes con una versión de neovim >= 8.
Luego en `~/.config/nvim` haremos git clone de la direccion de este repositorio.
Descarguen Ripgrep xd

También se requiere clonar este repositorio: 
```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```
Ese repositorio es para usar packer.
Tambien es importante descargar Packer
Luego en `~/.config` haremos git clone de la direccion de este repositorio.

Luego de lo anterior abriremos la carpeta nvim asi `nvim .` , ahí iremos a packer.lua que se encuentra en ```nvim/lua/configs/packer.lua``` , ahí haremos `:w` y luego `:so` saldremos volveremos a entrar a la carpeta de nvim de la manera que ya sé explicó, una vez dentro en pakcer.lua de nuevo, haremos `:so` `:PackerSync` y esperaremos, cuando termine de cargar abremos visto como la terminal cambió de color, lo cual indica que ya termin 

Luego en `~/.config/nvim` haremos git clone de la direccion de este repositorio.
Y ya se podrá utilizar de manera normal.



# Mapeos

En este archivo se encontraran los atajos de teclados que se encuentran actualmente funcionando en esta build de neovim:
  1. `<F2>` Renombrará las variables que se llamen igual a la variable sobre la que se encuentre el cursor.
  2. `<C-s>` Guarda.
  3. `<C-q>` Salir.
  4. `<leader>pv` equivalente al cd ..
  5. `y` copiar la linea.
  6. `p` pegar la linea.

### Mapeos de Undotree: 
  1. `<F5>` Mostrará las mas recientes versiones del programa que se está modificando, es como un control de versiones (Git) pero local.

### Mapeos de Fugitive: 
  1. `<leader>gs` Abrirá una ventana que mostrará el estado del respositorio Git del que hay una conexión.

### Mapeos de Telescope: 
  1. `<C-f>` Abrirá una ventana que permitirá navegar entre los diferentes archivos de un directorio.
  2. `<leader>bs` Busca la palabra o variable sobre la que esté el cursor.
  3. `<leader>fg` Abrirá una ventana que permitirá buscar una palabra o variable entre los diferentes archivos (si se usa en un directorio) o buscará la  variable en el archivo.
  4. `<leader>ps` Buscará la palabra que se escriba en el buscador (abajo a la izquierda).
	
### Mapeos de Lsp saga: 
  1. `df` Va a la definicion de la variable.
  2. `rn` Renombra todas las variables que se nombren como la que está parado el cursor.
  3. `fn` Busca esa palabra en la cual se encuentra el lugar.
  4. `-` Muestra los diagnosticos.

### Mapeos de Floaterm:
  1. `<A-i>` Crea una nueva terminal.
  2. `<A-o>` Esconde la terminal que se muestra en pantalla.
  3. `<A-k>` Mata la terminal que se muestra en pantalla.
  4. `<A-.>` Se mueve a la siguiente terminal.
  5. `<A-,>` Se mueve a la anterior terminal.

### Mapeos Harpoon:
  1. `<leader>a` Ancla el buffer actual.
  2. `<C-e>` Muestra la lista de buffers anclados.
  3. `<A-+>` Va al siguiente buffer anclado.
  4. `<A-->` Va al anterior buffer anclado.

### Mapeos Fugitive:
  1. `<leader>gs` Abre el centro de mando de Git.
# Mapeos

En este archivo se encontraran los atajos de teclados que se encuentran actualmente funcionando en esta build de neovim:
  1. `<F2>` Renombrará las variables que se llamen igual a la variable sobre la que se encuentre el cursor.
  2. `<C-s>` Guarda.
  3. `<C-q>` Salir.
  4. `<leader>pv` equivalente al cd ..
  5. `y` copiar la linea.
  6. `p` pegar la linea.

### Mapeos de Undotree: 
  1. `<F5>` Mostrará las mas recientes versiones del programa que se está modificando, es como un control de versiones (Git) pero local.

### Mapeos de Fugitive: 
  1. `<leader>gs` Abrirá una ventana que mostrará el estado del respositorio Git del que hay una conexión.

### Mapeos de Telescope: 
  1. `<C-f>` Abrirá una ventana que permitirá navegar entre los diferentes archivos de un directorio.
  2. `<leader>bs` Busca la palabra o variable sobre la que esté el cursor.
  3. `<leader>fg` Abrirá una ventana que permitirá buscar una palabra o variable entre los diferentes archivos (si se usa en un directorio) o buscará la  variable en el archivo.
  4. `<leader>ps` Buscará la palabra que se escriba en el buscador (abajo a la izquierda).
	
### Mapeos de Lsp saga: 
  1. `df` Va a la definicion de la variable.
  2. `rn` Renombra todas las variables que se nombren como la que está parado el cursor.
  3. `fn` Busca esa palabra en la cual se encuentra el lugar.
  4. `-` Muestra los diagnosticos.

### Mapeos de Floaterm:
  1. `<A-i>` Crea una nueva terminal.
  2. `<A-o>` Esconde la terminal que se muestra en pantalla.
  3. `<A-k>` Mata la terminal que se muestra en pantalla.
  4. `<A-.>` Se mueve a la siguiente terminal.
  5. `<A-,>` Se mueve a la anterior terminal.

### Mapeos Harpoon:
  1. `<leader>a` Ancla el buffer actual.
  2. `<C-e>` Muestra la lista de buffers anclados.
  3. `<A-+>` Va al siguiente buffer anclado.
  4. `<A-->` Va al anterior buffer anclado.

### Mapeos Fugitive:
  1. `<leader>gs` Abre el centro de mando de Git.


