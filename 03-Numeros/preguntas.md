## Preguntas teóricas

### En un double dispatch (DD), ¿qué información aporta cada uno de los dos llamados?
Tanto el primer llamado como el segundo aportan información sobre de que clase son los objetos que colaboran. Además, el segundo mensaje también nos habla de como se resuelve el problema. Por ejemplo, Al hacer la operación 3/5 + 12, el primer mensaje nos aporta que tipo de dato es el 12, mientras que en el segundo mensaje, al ya saber que el 12 es un entero, que el 3/5 es una fraccion, y que conocemos como sumar un entero a una fracción, ya podemos resolver el problema.

### Lógica de instanciado. Con lo que vieron y saben hasta ahora, ¿donde les parece mejor tener la lógica de cómo instanciar un objeto? ¿por qué? ¿Y si se crea ese objeto desde diferentes lugares y de diferentes formas? ¿cómo lo resuelven?
Nos parece que lo mejor es tener la logica para instanciar una clase concentrado en un solo lugar. De este modo, al modificar en alguna parte la creación de instancias, solo hay que hacerlo en un lugar. En caso de crearse el objeto desde diferentes lugares, lo ideal sería tener un único mensaje de clase que colabore con uno de instancia y que en el código de este último se utilicen otros mensajes para crear una instancia segun sea conveniente.

### Nombres de las categorías de métodos. Con lo que vieron y trabajaron hasta ahora, ¿qué criterio están usando para categorizar métodos?
Los metodos que no colaboraban con otros objetos porque corresponden al comportaiento interno de un objeto, los categorizamos como "privados". Por ejemplo, los metodos del double dispatch están en una categoria llamada "private dd".

### Subclass Responsibility. Si todas las subclases saben responder un mismo mensaje, ¿por qué ponemos ese mensaje sólo con un “self subclassResponsibility” en la superclase? ¿para qué sirve?
Esto nos permite delegar la responsabilidad de el como implementarlo a sus hijos, ya que el "que se hace" es el mismo pero varía el "como hacerlo".

### No rompas. ¿Por qué está mal/qué problemas trae romper encapsulamiento?
El romper encapsulamiento no nos favorece, ya que trae como consecuencia un aumento en el acoplamiento de los objetos. Esto último no es bueno ya que si una clase 'A' conocee el funcionamiento interno de otra clase 'B' y esta última cambia, la clase A probablemente se verá obligada cambiar, aumentando la complejidad de la lógia del programa y la posibilidad de que se produzcan errores en tiempo de ejecución.
