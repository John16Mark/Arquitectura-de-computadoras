# Práctica 2 - ALU

### Registro
![Diseño del componente registro](/P1.%20Sumador%20de%20registros/registro.png)
<br>El componente registro se encarga de la carga y almacenamiento de datos. Para la práctica manejamos palabras de 4 bits.
Dependiendo de la entrada **sel** realizará una operación determinada:

| sel | Operación |
| -------- | ------- |
| 00 | Carga |
| 01 | Desplazamiento a la izquierda |
| 10 | Desplazamiento a la derecha |
| 11 | Retención |

Nótese que para la práctica, las únicas dos operaciones que usaremos serán 00 (**carga**) y 11 (**retención**).

### Registro estado (banderas)
![Diseño del componente registro estado](/P1.%20Sumador%20de%20registros/registro_estado.png)
<br>Este componente es una modificación a registro que representa los registros *status* que almacenan las banderas.
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
![Diseño del componente control](/P1.%20Sumador%20de%20registros/control.png)
<br>Este componente controla la retención y carga de los registros, además de encargarse de que se realice la operación.
Las salidas sd, y sr le indican a los registros destino y fuente (respectivamente) qué operación realizar.
La salida sel le indica al componente **ruta** si cargamos la entrada D o la señal ya con el resultado de la operación al componente registro destino.
La entrada inicio indica si queremos que realice la operación. Para la práctica, inicio será una entrada botón, que al presionarlo hará la operación.
Para su funcionamiento usa transiciones de estados:<br>
![Diagrama de estados del componente control](/P1.%20Sumador%20de%20registros/control_estados.png)
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

### ALU
![Diseño del componente ALU](/P2.%20ALU/ALU.png)
<br>Este componente es el encargado de realizar las operaciones aritméticas, lógicas y de corrimiento como una Unidad Aritmético-Lógica.
La operación realizada depende de la entrada **sel**.
| sel | Operación |
| -------- | ------- |
| 000 | Suma |
| 001 | Resta |
| 010 | and |
| 011 | or |
| 100 | xor |
| 101 | not |
| 110 | Corrimiento a la izquierda |
| 111 | Corrimiento a la derecha |

### Ruta
![Diseño del componente ruta](/P2.%20ALU/ruta_1.png)
<br>Diseño detallado del componente
![Diseño detallado del componente ruta](/P2.%20ALU/ruta_2.png)
<br>
Contiene dos componentes **registro**, que representan el registro destino y el registro fuente. Además también contiene el componente **ALU** que es el encargado de calcular el resultado y las banderas.
Ruta depende del componente control para sus entradas **rd**, **rr**, y **s**

### Top - Instrucción
![Diseño del circuito instrucción](/P2.%20ALU/top_instruccion_1.png)
<br>Diseño detallado del circuito
![Diseño detallado del circuito](/P2.%20ALU/top_instruccion_2.png)
<br>El top engloba toda la práctica, como entradas tiene la señal de reloj (**clk**), clear (**clr**), el selector **operacion**, las entradas para los registros **D** y **R**, y el botón **inicio**.
Tenemos como salidas el resultado de la operación (**suma**) y las banderas de la operación (**banderas**).
