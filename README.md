# Tom y Jerry (y Nibbles también!)

## Parte 1: velocidad máxima

Hacer un sistema en wollok que modele al gato tom y a los ratones jerry y nibbles

El sistema tiene dos casos de uso principales:

- Indicar que tom comió un ratón ( aclarando cuál ratón comió)
- Indicar que tom corrió una distancia (aclarando cuantos metros).

Lo que nos interesa de tom es saber la velocidad máxima a la que puede correr.

La velocidad máxima depende de la energía que tenga.

La energía va a variar según vaya comiendo ratones y corriendo por ahí:

- Cuando tom corre, su energía disminuye en `cantidad de metros que corrió / 2`
- Cuando tom come un ratón, su energía aumenta en `12 + el peso del ratón`
- La velocidad máxima de tom es `5 + energía/10`

Tom comienza con 50 de energía

Existen 2 ratones.

- Jerry, cuyo peso es la `edad * 20`. Al inicio tiene 2 años, pero puede cumplir años.
- Nibbles, cuyo peso es 35, siempre

Nota: Acá se trabaja polimorfismo, ordenes, consulta y estado del objeto.

### Caso de prueba

Acá vamos a verificar mediante los test de wollok si nuestro código está correcto. Para este ejercicio vamos a escribirlos como si se tratara de una historia, y por ahora se repetirá código en cada uno de los test, más adelante veremos como evitar eso:

- Al inicio, la velocidad máxima de Tom es 10 (su energía es 50)
- Si come a Jerry, la velocidad máxima pasa a ser 15.2 (su energía es 102)
- Si corre 24 metros, entonces su velocidad máxima pasa a ser 14 (su energía es 90)
- Si come a Nibbles, pasa a tener de velocidad máxima 18.7 (su energía es 137)
- si Jerry cumple años (3 años de edad), y luego Tom lo vuelve a comer, pasaría a tener 25.9 (su energia es 209)
- si corre 38 metros su velocidad pasa a ser 24 (su energia es 190)

## Parte 2: Poder comer y cazar.

Se agrega como requerimientos

- Saber si tom puede cazar un ratón que está a cierta distancia (indicando la distancia)
- Cazar un ratón que está a cierta distancia (indicando el ratón y la distancia)

Puede cazar si tiene energía suficiente para recorrer esa distancia. Es
decir, la energía que gastaría en correr la distancia es menor a su propia
energía.

Nota: Acá se busca ser capaz de evitar la duplicación de código (subtareas),
y manejar correctamente métodos booleanos de consulta.

## Parte 3: Se amplía el menú

Agregar al modelo otro ratón, puede ser inventado pero teniendo en cuenta respetar el polimorfismo.

## Casos de prueba

Desarrollar distintos casos de prueba para demostrar que funcionan correctamente los métodos.
