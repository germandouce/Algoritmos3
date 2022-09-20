# Preguntas

## ¿Qué crítica le harías al protocolo de #estaHerido y #noEstaHerido? (en vez de tener solo el mensaje #estaHerido y hacer “#estaHerido not” para saber la negación)
El problema es que el uso de #estaHerido y #noEstaHerido a la vez es que estamos sobrecargando el objeto con mensajes innecesarios, que podrían ahorrarse con funcionalidades del sistema.

## ¿Qué opinan de que para algunas funcionalidades tenemos 3 tests para el mismo comportamiento pero aplicando a cada uno de los combatientes (Arthas, Mankrik y Olgra)
Para nuestro modelo es correcto porque cada combatiente es distinto. Aún así, no es lo ideal. Si en el modelo hubieramos usado subclasificacion alcanzaría con probar solo con el padre, ya que la idea de los test es probar funcionalidades distintas. En esos casos con probar que funciona para un combatiente debería bastar. Por ejemplo, en los test 23, 24 y 25 se prueba que, al estar fuera de combate, el combatiente no haga daño. Entonces bastaría probar que no hace daño con un solo combatiente.

## ¿Cómo modelaron el resultado de haber desarrollado un combate? ¿qué opciones consideraron y por qué se quedaron con la que entregaron y por qué descartaron a las otras?
El resultado de haber desarrollado un combate fue modelado a traves de un string, que podía tomar tres valores: 'bando1'(si ganó el bando 1), 'bando2'(si ganó el bando 2) e 'indeterminado'(si no gano ninguno). Entonces, al analizar el resultado, segun el caso, el objeto devolvía ese string y en los test chequeabamos que el resultado fuese el esperado. Para la cantidad de rondas, creamos un colaborador interno que guardaba la cantidad de rondas transcurridas y un metodo que recibía el numero de rondas que debió durar el combate y corroboraba que dicho numero fuera correcto. De esta manera no rompíamos encapsulamiento devolviendo el número de rondas que efectivamente había durado. Una duda que nos quedó es que si en vez de devolver un string con el resultado del combate deberíamos haber chequeado el resultado del mismo en el objeto con algun mensaje del estilo 'chequearResultadoCombate' como hicimos con el número de rondas.