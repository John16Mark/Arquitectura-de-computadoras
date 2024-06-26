# Práctica 1 - Sumador de registros
Esta práctica consiste en simular una instrucción sencilla entre registros.
Los registros operandos serán un registro destino y un registro fuente
Tendremos dos salidas que representarán el resultado de la instrucción y las banderas activadas por la instrucción.

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

### Ruta
![Diseño del componente ruta](/P1.%20Sumador%20de%20registros/ruta_1.png)
<br>Diseño detallado del componente
![Diseño detallado del componente ruta](/P1.%20Sumador%20de%20registros/ruta_2.png)
<br>El componente ruta es el que se encarga de realizar las operaciones y calcular las banderas.
Contiene dos componentes **registro**, que representan el registro destino y el registro fuente.
Ruta depende del componente control para sus entradas **rd**, **rr**, y **s**

### Top - Instrucción
![Diseño de la entidad instrucción](/P1.%20Sumador%20de%20registros/top_instruccion_1.png)
<br>Diseño detallado de la entidad
![Diseño detallado de la entidad](/P1.%20Sumador%20de%20registros/top_instruccion_2.png)
<br>El top engloba toda la práctica, como entradas tiene la señal de reloj (**clk**), clear (**clr**), las entradas para los registros **D** y **R**, y el botón **inicio**.
Tenemos como salidas el resultado de la operación (**suma**) y las banderas de la operación (**banderas**).
