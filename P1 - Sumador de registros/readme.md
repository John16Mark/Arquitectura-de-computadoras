# Práctica 1 - Sumador de registros

### Registro
![Diseño del componente registro](/P1%20-%20Sumador%20de%20registros/registro.png)
El componente registro se encarga de la carga y almacenamiento de datos. Para la práctica manejamos palabras de 4 bits.
Dependiendo de la entrada **sel** realizará una operación determinada:

| sel | Operación |
| -------- | ------- |
| 00 | Carga |
| 01 | Desplazamiento a la izquierda |
| 10 | Desplazamiento a la derecha |
| 11 | Retención |

Nótese que para la práctica, las únicas dos operaciones que usaremos serán 00 (**carga**) y 11 (**retención**).

### Registro estado (banderas)
![Diseño del componente registro estado](/P1%20-%20Sumador%20de%20registros/registro_estado.png)
Este componente es una modificación a registro que representa los registros *status* que almacenan las banderas.
Dependiendo de la entrada **sel** realizará una operación determinada:

| sel | Operación |
| -------- | ------- |
| 0 | Carga |
| 1 | Retención |

Las banderas usadas en esta práctica son:
* **Q[2]:** Bandera N, si el resultado es un número negativo.
* **Q[1]:** Bandera Z, si el resultado es 0.
* **Q[0]:** Bandera C, si el resultado da un acarreo.

Las banderas se calculan en el componente **ruta**, registro estado solo se encarga de almacenarlas.

### Control
![Diseño del componente control](/P1%20-%20Sumador%20de%20registros/control.png)
Este componente controla la retención y carga de los registros, además de encargarse de que se realice la operación.
Las salidas sd, y sr le indican a los registros destino y fuente (respectivamente) qué operación realizar.
La salida sel le indica al componente **ruta** si cargamos la entrada D o la señal ya con el resultado de la operación al componente registro destino.
La entrada inicio indica si queremos que realice la operación. Para la práctica, inicio será una entrada botón, que al presionarlo hará la operación.
Para su funcionamiento usa transiciones de estados:
![Diagrama de estados del componente control](/P1%20-%20Sumador%20de%20registros/control_estados.png)
* **carga:**
registro destino en carga
registro fuente en carga
sel en 0 (no estamos realizando la operación)
* **suma:**
registro destino en carga
registro fuente en retención
sel en 1 (estamos realizando la operación)
* **carga:**
registro destino en retención
registro fuente en retención
sel en 0 (no estamos realizando la operación)

### Ruta
![Diseño del componente ruta](/P1%20-%20Sumador%20de%20registros/ruta_1.png)
<br>Diseño detallado del componente
![Diseño detallado del componente ruta](/P1%20-%20Sumador%20de%20registros/ruta_2.png)
El componente ruta es el que se encarga de realizar las operaciones y calcular las banderas.
Contiene dos componentes **registro**, que representan el registro destino y el registro fuente.
Ruta depende del componente control para sus entradas **rd**, **rr**, y **s**
