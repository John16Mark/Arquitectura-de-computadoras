# Práctica 3 - Pila

### Program Counter
![Diseño del componente Program Counter](/P3.%20Pila/program_counter.png)
<br>El componente Program Counter es el encargado de almacenar la dirección de la operación que sigue de ejecutar. La salida **O** será directamente el valor de la entrada **I**.

### Stack Pointer
![Diseño del componente Stack Pointer](/P3.%20Pila/stack_pointer.png)
<br>Este componente representa la pila que almacena la instrucción que almacena la dirección de retorno a la hora de llamar una subrutina. 
La salida **Q** será directamente el valor de la entrada **I**.
Nótese que al hacer *clear* el valor de la salida será `111` en vez de `000` porque este valor representa que regresamos a la cima de la pila.

### RAM
![Diseño del componente RAM](/P3.%20Pila/RAM.png)
<br>Este componente actúa como una memoria sencilla, aquí se almacenará la posición a la que deberemos ir una vez regresemos de un salto.
El componente tiene un arreglo con una capacidad de 8 direcciones de 16 bits.
La entrada **A** será el selector de posición del arreglo y depende del **Stack Pointer**

### Clock divisor
![Diseño del componente Clock Divisor](/P3.%20Pila/clk_divisor.png)
<br>Este componente es para cuestiones didácticas en esta práctica. Sirve como retardador de la señal de reloj divide el tiempo de la señal a la mitad 27 veces para poder realizar las operaciones de forma manual en la FPGA. La salida **q_27** será la señal de reloj de los demás componentes de la práctica.

### Top - Pila
![Diseño del circuito Pila](/P3.%20Pila/top_pila_1.png)
<br>Diseño detallado del circuito
![Diseño detallado del circuito Pila](/P3.%20Pila/top_pila_2.png)
<br>El top engloba toda la práctica, como entradas tiene la señal de reloj (**clk**), clear (**clr**), el selector **s1s0** para elegir qué tipo de instrucción es la que llega, la entrada **botones** para cargar la posición a la hora de realizar un salto y la salida **leds** para saber lo que está sucediendo con el **Program Counter**.
El clock real solo lo tendrá como entrada el componente **clock divisor**, y la salida será la señal de reloj que recibirán los demás componentes.
| s1s0 | instrucción |
|------|------|
| 00 | instrucción normal |
| 01 | rcall |
| 10 | ret |
* **instrucción normal:**
Avanza en 1 el contador de programa. Para las instrucciones normales (que no son saltos ni regresos).
* **rcall:**
Realiza un salto a la instrucción en la posición dada por la entrada **botones**. Disminuye en 2 el apuntador de pila y almacena en la memoria la posición de la instrucción + 1.
* **ret:**
regresa a la posición anterior guardada en la pila y aumenta en 2 el apuntador de esta.
<br>
**NOTA:** Para la práctica solamente se trabajan con palabras de 6 bits en sus entradas y salidas para fines didácticos, pero internamente los componentes están hechos para trabajar con palabras de 16 bits.