# Simple List en Ruby
Repositorio de implementación de lista simplemente enlazada en Ruby.  
Por **Daniel Esteban Espitia Agudelo** y **Santiago Hurtado Nieto**  

## 1. Descripción  
Este proyecto implementa una *lista simple* en *Ruby*, desarrollada bajo el **paradigma de Programación Orientada a Objetos (POO)**.  
La estructura utilizada permite realizar operaciones básicas sobre una lista enlazada simple, aprovechando las características de Ruby para la definición de clases, métodos y objetos.  

## 2. Requerimientos de software  
Para ejecutar el proyecto, es necesario contar con el siguiente entorno configurado:  

### Instalación de Ruby en Windows
1. **Descargar Ruby Installer** desde [RubyInstaller](https://rubyinstaller.org/).  
2. Durante la instalación, aparecerá una alerta de **Windows Protect** indicando que la aplicación podría no ser segura.  
   - Haz clic en **Más información** y luego en **Ejecutar de todas maneras**.  
3. Una vez finalizada la instalación, se abrirá automáticamente una ventana de **cmd**.  
   - Presiona **Enter** en todas las opciones que aparezcan hasta que termine el proceso.  
4. Configura la **variable de entorno** agregando la ruta de la carpeta `bin` de Ruby.  

### Ruby en MacOS
En **MacOS**, Ruby ya viene instalado por defecto.  
En caso de necesitar otra versión, se puede gestionar fácilmente con herramientas como `rbenv` o `rvm`.  

### Configuración en Visual Studio Code
1. Abre **Visual Studio Code (VS Code)**.  
2. Instala las siguientes extensiones:  
   - [Ruby LSP](https://marketplace.visualstudio.com/items?itemName=Shopify.ruby-lsp) (de Shopify)  
   - [Solargraph](https://marketplace.visualstudio.com/items?itemName=castwide.solargraph) (de Castwide)  
3. En la parte inferior de VS Code, haz clic en el ícono de corchetes `{ }`.  
   - Selecciona **Configurar** en donde diga *Ruby LSP*.  
   - Se abrirá el gestor de archivos, busca el **ejecutable de Ruby (`ruby.exe`)** dentro de la carpeta de instalación y selecciónalo.  

### Opciones para ejecutar el programa
Existen dos formas de ejecutar el proyecto:  

#### 1. Configuración de tareas en VS Code  
Crea o edita el archivo `.vscode/tasks.json` con el siguiente contenido para facilitar la ejecución de los programas Ruby:  

```json
{
  "version": "2.0.0",
  "tasks": [
    {
      "label": "Run Ruby",
      "type": "shell",
      "command": "ruby",
      "args": [
        "${file}"
      ],
      "group": {
        "kind": "build",
        "isDefault": true
      },
      "presentation": {
        "echo": true,
        "reveal": "always",
        "focus": true,
        "panel": "shared"
      }
    }
  ]
}
```

#### 2. Ejecución directa en la terminal
Si no deseas configurar tareas en VS Code, simplemente abre una terminal en la carpeta del proyecto y ejecuta:
 ` ruby test.rb `

