# rubySimpleList
Repositorio de implementación de lista simplemente enlazada en Ruby. Por Daniel Esteban Espitia Agudelo y Santiago Hurtado Nieto 
# Simple List en Ruby

## 1. Descripción  
Este proyecto implementa una **lista simple** en **Ruby**, desarrollada bajo el **paradigma de Programación Orientada a Objetos (POO)**.  
La estructura utilizada permite realizar operaciones básicas sobre una lista enlazada simple, aprovechando las características de Ruby para la definición de clases, métodos y objetos.  

## 2. Requerimientos de software  
Para ejecutar el proyecto, es necesario contar con el siguiente entorno configurado:  

- **Ruby**  
  - Descargar e instalar **Ruby Installer for Windows** desde [RubyInstaller](https://rubyinstaller.org/).  
  - Configurar las **variables de entorno** con la ruta del ejecutable de Ruby.  

- **Editor de código: Visual Studio Code (VS Code)**  
  - Extensiones necesarias:  
    - [Ruby LSP](https://marketplace.visualstudio.com/items?itemName=Shopify.ruby-lsp)  
    - [Solargraph](https://marketplace.visualstudio.com/items?itemName=castwide.solargraph)  

- **Configuración de Tareas en VS Code**  
  Crear o editar el archivo `.vscode/tasks.json` con el siguiente contenido para facilitar la ejecución:  

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

