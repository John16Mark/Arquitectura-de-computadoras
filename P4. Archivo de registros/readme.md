# Práctica 4 - Archivo de registros
Esta práctica consiste en hacer una simulación de cómo se almacenan y acceden los registros en una computadora.
Para esto se crean varios componentes que serán solo para fines didácticos para saber cómo funciona el archivo de registros.

### Registro
![Diseño del componente registro](/P4.%20Archivo%20de%20registros/registro.png)
<br>El componente registro se encarga de la carga y almacenamiento de datos. Para la práctica manejamos palabras de 4 bits.
Si **en** está encendido se sobreescribe por el recibido en la entrada **I**

### Decodificador 5 a 32
![Diseño del componente d_5a32](/P4.%20Archivo%20de%20registros/d_5a32.png)
<br>Este componente es un decodificador de una entrada de 5 bits a 32 salidas de 1 bit. Si está encendido *enable write* (**en_w**), **sel_w_d** selecciona cuál de los 32 registros va a activar el modo carga para sobreescribir su valor.

### Multiplexor 32 a 1
![Diseño del componente mux_32_1](/P4.%20Archivo%20de%20registros/mux_32_1.png)
<br>Este componente recibe como entradas un selector (**sel_read**) para 32 opciones, una entrada de 32*n* (donde *n* es el tamaño de la palabra, en este caso 4), y una salida de tamaño *n*.
**sel_read** selecciona un índice *m*, y tendrá como salida un dato tamaño *n* basado en el índice de la siguiente forma
| sel_read| rango |
| ---- | ---- |
| 00000 (0) | 3:0 |
| 00001 (1) | 7:4 |
| 00010 (2) | 11:8 |
| ... | ... |
| 11111 (31) | 127:124 |

### Archivo de registros
![Diseño del componente archivo_registro](/P4.%20Archivo%20de%20registros/archivo_registro_1.png)
<br>Diseño detallado del componente
![Diseño detallado del componente](/P4.%20Archivo%20de%20registros/archivo_registro_2.png)
<br>Este componente almacena los 32 registros para uso dentro del procesador. Tiene como entradas un **clk**, **clr**, tres selectores: uno para escritura (**sel_w_d**) y dos para lectura (**sel_r_d**, **sel_r_r**); un *enable write* (**en_w**), y una entrada para carga de datos. Tiene dos salidas de lectura para registro destino (**D**) y fuente (**R**).

### Eliminador de ruido (e_r)
![Diseño del componente e_r](/P4.%20Archivo%20de%20registros/e_r_1.png)
Diseño detallado del componente
![Diseño detallado del componente](/P4.%20Archivo%20de%20registros/e_r.png)
<br>Este componente sirve para eliminar el ruido a la hora de activar un botón.
Hace que al presionar el botón se active una sola vez la salida y ya no se vuelva activar mientras siga presionado. Una vez lo dejamos de presionar volvemos al estado inicial.
Para esto se hace uso de Flip-Flops que actúan con la señal de reloj.

### Contador
![Diseño del componente contador](/P4.%20Archivo%20de%20registros/cont.png)
<br>Este componente sirve como contador. Cada vez que le llega una señal de reloj (que será la salida de un eliminador de ruido cuando se presiona un botón). Se usará como selector de registros para la práctica.

### Clock divisor
![Diseño del componente Clock Divisor](/P4.%20Archivo%20de%20registros/clk_divisor.png)
<br>Este componente es para cuestiones didácticas en esta práctica. Sirve como retardador de la señal de reloj divide el tiempo de la señal a la mitad 18 veces para poder realizar las operaciones de forma manual en la FPGA. La salida **q_18** será la señal de reloj de algunos de los demás componentes de la práctica.

### Top - Práctica 4
![Diseño de la entidad Práctica 4](/P4.%20Archivo%20de%20registros/top_practica4_1.png)
<br>Diseño detallado de la entidad
![Diseño detallado de la entidad Práctica 4](/P4.%20Archivo%20de%20registros/top_practica4_2.png)
<br>El top engloba toda la práctica, como entradas tiene la señal de reloj (**clk**), clear (**clr**), los tres botones que actuarán como selectores para los registros.

| botón | selector |
| ------ | ------ |
| 1 | registro escritura D |
| 2 | registro lectura D |
| 3 | registro lectura R |

Tendrá tres *clears* adicionales para los selectores y una entrada *enable write* (**en_w**).
El clock real solo lo tendrá como entrada el componente **clock divisor**, y la salida será la señal de reloj que recibirán los componentes **archivo de registros** y **eliminadores de ruido**. El **contador** recibirá como señal de reloj la salida del eliminador.