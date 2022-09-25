# Preguntas

## En los test 01 y 02 hay código repetido. Cuando lo extrajeron crearon algo nuevo. Eso es algo que estaba en la realidad y no estaba representado en nuestro código, por eso teníamos código repetido. ¿Cuál es esa entidad de la realidad que crearon?
Extrajimos la sección repetida de codigo de los test 1 y 2 que medía el tiempo que tomaba realizar una determinada acción (agregar o  remover un cliente) a un método aparte. Este método recibía por parámetro la acción a ejecutar (mediante un clousure) y el tiempo máximo que debía tomar. Esta acción podría representar en la realidad un cronómetro que mide el tiempo que se tarda en realizar una acción y que verifica que la cantidad de tiempo sea menor al especificado.

## ¿Cuáles son las formas en que podemos representar entes de la realidad en Smalltalk que conocés? Es decir, ¿qué cosas del lenguaje Smalltalk puedo usar para representar entidades de la realidad?
La principal forma de representar a la realidad en Smalltalk es a través del uso de objetos. A su vez, las clases nos permiten representar su concepto, idea, modelo, y los mensajes, las colaboraciones e interacciones que existen entre ellos.

## ¿Qué relación hay entre sacar código repetido (creando abstracciones) y la teoría del modelo/sistema (del paper de Naur)?
Sacar código repetido permite mejorar el modelo que tenemos de la realidad. Al hacer una abstracción en el código de forma correcta, entendemos mejor el problema que se está modelando. Aún así, hay que tener cuidado a la hora de realizar abstracciones en el código, respetando la visión original de los programadores que lo idearon. 