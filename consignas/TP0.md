# Consigna TP0

## Objetivos

- :wrench: Que empieces a conocer algunas de las herramientas que vamos a estar usando durante la cursada, asegurando que te funcionen antes de que que sigamos avanzando con la práctica del paradigma funcional.
- :arrows_counterclockwise: Empezar a incorporar la ejecución de pruebas automáticas al flujo de trabajo, para asegurar que la solución propuesta cumpla con la funcionalidad esperada.
- :warning: Usar un entorno de desarrollo que te ayude a detectar y resolver problemas de forma temprana.
- :cloud: Usar un repositorio de código donde puedas subir tus cambios todas las veces que quieras, para que tus docentes puedan verlos, así como también mantener un historial de lo que fuiste haciendo, sin miedo a perder tu trabajo.

Si tenés algún problema siguiendo los pasos para preparar tu entorno, o algo no coincide con lo que esperabas:
- Revisá [esta página](https://github.com/pdep-utn/enunciados-miercoles-noche/blob/master/pages/haskell/troubleshooting.md) que tiene un compendio de errores y soluciones.
- Podés usar el canal de discord **#troubleshooting** para preguntar incluyendo algún screenshot que nos sirva para ayudarte a resolver los inconvenientes que tengas.

> :warning: IMPORTANTE: hay un problema bien conocido con Haskell y los directorios que incluyen caracteres especiales (los más comunes suelen ser ñ, tildes y °).
> 
> En particular, si usás Windows y tu nombre de usuario tiene caracteres especiales, antes de avanzar conviene [crear un nuevo usuario local](https://www.xataka.com/basics/windows-10-como-crear-una-cuenta-de-usuario-local-no-enlazada-a-una-cuenta-de-microsoft), sin caracteres especiales, y luego comenzar la instalación que se describe más abajo con ese usuario. No es recomendable tratar de renombrar el usuario de Windows, ya que podría traerte otro tipo de problemas.

## Parte 1: Preparación de entorno de trabajo

Las herramientas que vamos a usar son:
  - **Git**: para trabajar con versionado de código, hoy en día considerado el estándar de la industria para ese fin. [*Video introductorio*](https://www.youtube.com/watch?v=rRKe7l-ZNvM)
  - **Visual Studio Code (VSCode)**: editor de texto gratuito con herramientas integradas que te permiten desarrollar con mayor comodidad.
  - **GHC + Stack**: además de proveerte una instalación de Haskell, permite correr pruebas automáticas (o tests) muy fácil [*Video introductorio*](https://youtu.be/FCwwOM_7jZo).

A continuación te dejamos los pasos a seguir para instalar y configurar las distintas herramientas. Vas a aprender lo necesario para usarlas como parte de este trabajo.

### Git

Primero que nada tenés que instalar Git para bajar y subir tu código al hacer las prácticas (y eventualmente para trabajar en equipo). Te dejamos el [link para descargar Git](https://git-scm.com/downloads) (elegí el que corresponda a tu sistema operativo).

> :warning: Si nunca usaste git en tu computadora, luego de instalar git asegurate de configurarle tu nombre e email desde una consola de esta forma:
> - `git config --global user.name "Tu nombre y apellido"`
> - `git config --global user.email "tu_mail@example.com"`

En las partes siguientes de este trabajo vas a encontrar instrucciones sobre cómo usar git para esta primer etapa de la cursada.

:warning: Si estás en Windows, la instalación incluirá una herramienta llamada **Git Bash** que sirve para tener una consola de comandos similar a la de otros sistemas operativos. **Cada vez que requieras hacer algo por línea de comando, procurá usar Git Bash y no Power Shell/CMD para evitar confusiones**.

> :bulb: **Tip:** podés configurar el Visual Studio Code para usar Git Bash por defecto al abrir una terminal.
>
> Esto puede hacerse desde la solapa **Terminal** de VSCode de esta forma:
>
> ![Seleccionar perfil por defecto](imagenes/TP0/vscode-git-bash-default-1.png)
>
> ... y luego tenés que elegir la opción correspondiente en la barra que aparecerá arriba de todo:
>
> ![Seleccionar Git Bash](imagenes/TP0/vscode-git-bash-default-2.png)


### GHC + Stack

**GHC** es el compilador de Haskell y **Stack** es un conjunto de herramientas que facilita enormemente el desarrollo comercial y académico en este lenguaje. 

Hay una forma muy sencilla de instalar estas herramientas, mediante [GHCup](https://www.haskell.org/ghcup/). Ejecutá el comando que se te indique (el cual estará basado en tu sistema operativo actual).

> :warning: Asegurate de instalar todas las herramientas adicionales por las que te pregunte durante la instalación para que puedas trabajar durante la cursada. En particular **stack** es requerido para trabajar con proyectos que incluyen dependencias (como el framework de testeo), y **HLS** o Haskell Language Server es necesario para que funcione en conjunto con editores como el VisualStudio Code.

> :bulb: Si ya instalaste GHCup anteriormente, alcanza con actualizarlo ejecutando el comando `ghcup upgrade` y configurar las versiones a usar de las distintas herramientas usando la interfaz interactiva ejecutando `ghcup tui`.
>
> Ver más abajo para más detalles.

A modo de referencia, así se ve la ejecución del comando de instalación provisto por GHCup para instalar las herramientas en un entorno con Windows, incluyendo su configuración desde la terminal:

![GHCup input](./imagenes/TP0/ghcup-1.png)

![GHCup output](./imagenes/TP0/ghcup-2.png)

:arrows_counterclockwise: Para instalar y configurar una versión diferente a la que tenés actualmente de alguna de las herramientas de haskell (GHC, HLS, Cabal o Stack), podés hacerlo usando la interfaz de GHCup con el comando `ghcup tui`, seleccionando la versión que querés y usando la opción `i` para que se instale dicha versión y luego `s` para que configure tu sistema operativo para usar esa versión.

![GHCup tui](./imagenes/TP0/ghcup-tui.png)

Vas a ver una letra `I` al lado de cada versión que tengas instalada de cada herramienta y una letra `S` si es la que tenés configurada para usar.

> En caso de que lo necesites, podés encontrar más información sobre GHCup en esta [guía del curso de los miércoles a la noche](https://github.com/pdep-utn/enunciados-miercoles-noche/blob/master/pages/haskell/entorno.md#ghcup).

### VSCode

Si bien se puede usar cualquier editor de texto para programar en Haskell, recomendamos trabajar usando Visual Studio Code que podés instalar [desde acá](https://code.visualstudio.com/).

Luego instalale las siguientes extensiones:
- [Haskell - Id: haskell.haskell](https://marketplace.visualstudio.com/items?itemName=haskell.haskell), le agrega al editor el soporte básico para trabajar con Haskell.
- [Live Share - Id: ms-vsliveshare.vsliveshare](https://marketplace.visualstudio.com/items?itemName=MS-vsliveshare.vsliveshare), para facilitar el trabajo en equipo de forma sincrónica.


Plugins opcionales:
- [Markdown Emoji - Id: bierner.markdown-emoji](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-emoji), para que se muestren los emojis en la vista previa de los archivos `.md` :heart:
- [vscode-pdf - Id: tomoki1207.pdf](https://marketplace.visualstudio.com/items?itemName=tomoki1207.pdf), para mostrar archivos `.pdf`, por si las consignas de alguna práctica futura se encuentran en ese formato y te resulta más cómodo tener una vista previa integrada que abrir el archivo por afuera.

## Parte 2: Probar tu entorno

### Primeros pasos  :hatching_chick:

1. Abrí una consola (puede ser una nativa de tu sistema operativo o **Git Bash**) posicionada en el directorio donde quieras clonar este repositorio. Podés hacerlo por consola usando el comando `cd pathElegido`.

   > :warning: Procurá que no hayan caracteres especiales en el path elegido, ya que podría traerte problemas más adelante con Haskell.
   
   Luego cloná el repositorio con el comando: `git clone urlParaClonarEsteRepo`.

   La URL la podés sacar de GitHub como se muestra acá:

   ![URL clone](imagenes/TP0/clone.png)

   > :exclamation: Para esta operación, usando el protocolo HTTPS, te va a pedir un usuario y contraseña, ya que es un repositorio privado. Tené en cuenta que como contraseña tenés que usar un token personal generado desde GitHub [como se explica acá](https://docs.github.com/es/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token).
   >
   > Podés crear el token desde [acá](https://github.com/settings/tokens/new). Procurá marcar la opción **repo** para que el token tenga permisos de lectura y escritura.
   >
   > Alternativamente, en caso de querer usar SSH en vez de HTTPS en tu computadora personal, podés encontrar acá una guía para configurar git con SSH [acá](https://github.com/pdep-utn/enunciados-miercoles-noche/blob/master/pages/haskell/entorno.md#git-con-ssh).

2. Navegá al directorio nuevo con el comando `cd nombreDelRepo` y luego ejecutá `code .` para abrir el VSCode en ese lugar. Alternativamente podés abrir el editor y elegir manualmente la carpeta que se te creó al clonar el repo.

    Ahí vas a poder ver y editar los archivos que están en este repositorio, así como ejecutar el código Haskell desde una terminal dentro del mismo editor.

3. Luego de abrir una terminal desde el menú **Terminal** del VSCode (o con `ctrl-shift-ñ`) ejecutá el comando: `stack test"`.

   > :coffee: Tené en cuenta que la primera vez que ejecutes este comando va a tardar un poco, porque tiene que descargar varias cosas para configurar el entorno de cero antes de poder correr las pruebas. Pero no te preocupes, que las veces siguientes no debería tardar en ejecutarse.

   Si todo anduvo bien (asumiendo que todavía no hiciste cambios en el `TP0.hs`) vas a ver algo como esto en la terminal:

    ```
   TP0
   La respuesta
      ... a la vida, el universo y todo lo demas ... [x]

    ... detalles del test fallido ...

    1 example, 1 failures

    mini-tps-funcional> Test suite mini-tps-funcional-test failed

    ...
    ```

Si llegaste hasta acá sin sorpresas, felicitaciones!! :tada: Vas bien!

Es esperable que el test del TP0 **falle** con un error al ejecutar el comando de stack para correr los tests, ya que todavía no se implementó lo necesario en el archivo `src/TP0.hs` para que dicho test funcione.

A pesar de ese **error durante la ejecución**, de todos modos debería mostrarse el resumen de haber corrido de las pruebas: `1 example, 1 failure`. Esto indica que se corrió un solo caso de prueba, y hubo un resultado fallido.

> :interrobang: Si algo no te funcionó como se esperaba de esta primer parte y necesitás ayuda, contactanos. Hay un canal en Discord llamado **#troubleshooting** para ayudar con problemas técnicos.

### Trabajando con Haskell  :muscle:

El siguiente paso es jugar con Haskell para entender un poco más lo que está pasando y eventualmente hacer que ese test deje de fallar.

1. Abrí el archivo `src/TP0.hs`. Vas a encontrar que incluye una definición como esta:

   ```haskell
   laRespuesta :: Number
   laRespuesta = undefined
   ```

   - Aquí se está declarando el tipo de `laRespuesta` que debería ser un número.

     > :bulb: Usaremos el tipo de dato `Number` durante la cursada para aquellos valores que sean numéricos, el cual forma parte de las customizaciones al lenguaje provistas por el módulo **[PdePreludat](https://github.com/10Pines/pdepreludat/blob/master/README.md)** que se incluye en este proyecto.

   - También se declara qué es `laRespuesta`, indicando que es equivalente a la expresión que se encuentra a la derecha del `=`.
   
      > :bulb: En Haskell se puede usar la expresión `undefined` para postergar la implementación de algunas funciones que nos interesa que existan para usarlas desde otro lado, **permitiendo que el programa compile** de todos modos.
      >
      > Pero bueno, si al **ejecutar** el programa se evalúa esa expresión va a lanzar un **error** :boom:, como en este ejemplo.

2. En el archivo `src/TP0.hs` cambiá el valor de `laRespuesta` a `7`, guardá los cambios y volvé a correr las pruebas de este trabajo.

   Deberías ver que el resultado del test todavía no es exitoso, indicando que se esperaba que fuera `42` pero se obtuvo `7`.

   > :bulb: Con esta implementación ya no hay errores al tratar de conocer el valor para `laRespuesta`. Lo que falla en este caso es la prueba automática, que cuenta con una validación que no se cumplió.

3. Volvé a cambiar ese valor, ahora por el booleano `True` y guardá los cambios.

   Dado que hay un error **en tiempo de compilación**, porque el valor `True` no es del tipo esperado, correr los tests nuevamente **no debería ser posible**. Al ejecutar ese comando deberías ver detalles sobre el error de tipos en vez del resumen de ejecución de tests.

   > :white_check_mark: Si tu entorno con **VSCode** + el plugin **Haskell** está correctamente instalado, también debería marcarte el error de tipos dentro del mismo editor, subrayando el error **antes** de intentar correr el programa.
   >
   > ![Tipado VSCode Inline](imagenes/TP0/tipado-vscode-1.png)
   >
   > También vas a encontrar esta información en la vista de problemas (si no la encontrás, usá `View -> Problems`). Esa es una gran ventaja de tener un buen entorno de desarrollo, nos ayuda a detectar problemas de forma temprana!
   >
   > ![Tipado VSCode Inline](imagenes/TP0/tipado-vscode-2.png)

4. Volvé a cambiar el valor para `laRespuesta`, esta vez usando el número `42`, y ejecutá el comando `stack test` nuevamente, para confirmar que el test del TP0 ahora sí funciona. El mismo debería mostrarse en verde, para indicar que funcionó como se esperaba, y el resumen final de ejecución debería decir: `1 example, 0 failures` ya que se ejecutó un solo caso de prueba y no hubieron fallos.

5. Además de correr las pruebas automáticas, podés usar `stack ghci` para ejecutar el intérprete de Haskell con todo el código que se encuentra en la carpeta `src` ya cargado.

   > :bulb: Más adelante habrán muchos archivos de Haskell en la carpeta `src`, por lo que si luego querés cargar solamente uno de esos archivos `.hs`, podés indicarlo con el comando:
   >
   > `stack ghci src/NombreDelArchivo.hs`.

   Probá correr el comando `stack ghci` o bien `stack ghci src/TP0.hs` en la consola. Deberías ver que se carga el programa y te permite ejecutar tu código en una consola de Haskell.

   Si en la consola de Haskell escribís `laRespuesta` y le das enter, debería responder con el valor correspondiente como se ve en este ejemplo:

   ![Consola GHC](imagenes/TP0/stack-ghci.png)

    > :bulb: Si luego de ejecutar el comando `stack ghci` hiciste cambios en el código, podés escribir `:reload` o `:r` para que vuelva a cargar el/los archivos `.hs` sin tener que volver a levantar el intérprete de Haskell (ghci). Para salir del intérprete de Haskell y volver a la terminal de bash podés usar `:quit` o `:q`.

Para los siguientes trabajos se espera que trabajes de forma similar, validando con pruebas automáticas que tu programa funcione, pero con consignas más interesantes, claro :wink:

> :writing_hand: En caso de que te sirva para los próximos trabajos, tené en cuenta que si sólo querés ejecutar las pruebas para el mini-tp en el que estés trabajando en vez de las de todos los mini-tps juntos (lo cual se hace con el comando `stack test`), podés especificarlo en el comando para ejecutar las pruebas de esta forma, usando el número de TP que te interese, por ejemplo:
>
> `stack test --test-arguments "--match=TP0"`.


> :warning: Para la ejecución de tu programa es importante que te asegures siempre de que **todo el código del proyecto compila**. Tené esto en cuenta para los próximos trabajos prácticos, ya que si algo no compila no se van a poder ejecutar las pruebas de ningún trabajo en el servidor de GitHub.

## Parte 3: Subir tus cambios a GitHub

Como estos cambios querés que se suban a GitHub, lo siguiente es ejecutar una serie de comandos de git en la consola.

En la terminal del sistema operativo (o Git Bash si estás en Windows) corré los siguientes comandos para:

1. Agregar tus cambios a lo que será tu siguiente commit (podés verlo como un paquetito con los cambios que querés subir al repositorio):
   ```
   git add .
   ```

   > El `.` es para indicar que querés incluir los cambios de todos los archivos modificados del proyecto, que es lo que haremos normalmente.

2. Commitear tus cambios con un mensaje representativo, por ejemplo:
   ```
   git commit -m "Solución TP0"
   ```
   Tené en cuenta que eso sólo impacta a tu repositorio local (sigue estando sólo en tu máquina). Por eso lo siguiente es...
3. Subir tus cambios al repositorio remoto (GitHub):
   ```
   git push
   ```
4. Podés verificar que se subió correctamente entrando a la página de GitHub, al entrar a tu repositorio vas a encontrar el mensaje del último commit y cuándo fue que lo hiciste.

> :cyclone: Git tiene muchas más funcionalidades, en esta materia sólo usaremos las más básicas, incorporando un par más cuando amerite. Si en algún momento tenés problemas que no sabés resolver, avisanos por Discord así te damos una mano.
>
> Si querés profundizar sobre el uso de git, este [tutorial](https://www.youtube.com/watch?v=OgasfM5qJJE) explica todo (y un poco más) de lo que vas a necesitar para la cursada.

## Parte 4: Actualizar el README

El **README** de un proyecto es básicamente una carta de presentación. Es común que incluya información útil para otras personas, y también un indicador de si las pruebas existentes funcionan, comúnmente conocido como **Badge**.

1. En el archivo `README.md` que está en la raíz del proyecto completá con tu **nombre y apellido** donde se indica.

2. Editá el **Badge de GitHub Actions** para que muestre el estado del proyecto y redirija a la última ejecución de las pruebas. Una vez que termines el TP0 tu repo GitHub va a mostrar el **Badge** que da información respecto a si todas las pruebas que se encuentran en este proyecto pudieron correrse sin problemas.

   > :warning: ATENCIÓN: Asegurate de cambiar **en los dos lugares** en los que dice **TuUsuarioDeGitHub** por el nombre de usario que corresponda.
   >
   > ![badge](./imagenes/TP0/badge.png)
   >
   > Si no reemplazás el usuario en ambos links, el badge no se va a ver correctamente o no va a redirigir a la página con los resultados de la ejecución de las pruebas como debería.

3. Luego de subir estos nuevos cambios al repositorio GitHub, creá un **tag** para etiquetar tu último commit. Esta acción disparará el proceso que eventualmente corre las pruebas en el servidor de GitHub, luego de lo cual se actualizará la imagen del badge automáticamente (tiene que pasar un tiempo hasta que se actualice el estado de ejecución).

   El etiquetado puede hacerse desde la terminal ejecutando los siguientes comandos:

   ```
   git tag -a v1.0 -m "TP0"
   git push origin --tags
   ```
   > Podés elegir el número de versión como mejor te parezca, nada más tené en cuenta que para las próximas entregas deberías indicar otro número de versión.
   
   ... o directamente desde GitHub siguiendo estos pasos:

   - Hacer click en el link tags:

     ![Tags](imagenes/TP0/tags-01.png)

   - Elegir la opción Releases, y clickear en el botón para crear un nuevo release:

     ![Crear release](imagenes/TP0/tags-02.png)

   - Indicar un número de versión:

     ![Version](imagenes/TP0/tags-03.png)

     En el menú **Target** dejá la opción que aparece por defecto: **Target: main**.

   - Y así como está, no hace falta completar más nada, clickear el botón **Publish release** que está más abajo:

     ![Publish release](imagenes/TP0/tags-04.png)

Eso es suficiente para que se dispare el proceso que corre las pruebas, y quede registrado el resultado de la ejecución en cuestión en base al código que está actualmente subido en tu repo, que es lo que nos interesa :+1:

# Checkpoint de autorevisión :mag:

Entrá a la página principal de tu repo en GitHub para verificar que tu solución se haya subido, incluyendo los cambios al `README.md`.

Asegurate de haber cambiado tu nombre y apellido, que las pruebas se hayan ejecutado correctamente y que se vea correctamente el badge.

A modo de referencia, así se ve un badge luego de que las pruebas hayan corrido exitosamente en el servidor de GitHub.

![Badge verde](imagenes/TP0/badge-build-passing.png)

> Si se muestra en gris en vez de en verde puede ser que no se hayan corrido las pruebas o que todavía no se haya actualizado el estado del mismo. Podés clickear en el badge para que te lleve a la ejecución y confirmar si se corrieron o no.

-------

Con esto oficialmente terminaste de configurar y conocer las herramientas que usaremos para funcional (y algunas también para los otros paradigmas). Si te quedaron dudas, no te las guardes, consultá!

Los próximos TP0s van a ser más livianos porque este te va a allanar el camino, prometido :sweat_smile:
